import gym
from gym import spaces
import json
import os
import random
import numpy as np
import sys
from stable_baselines import logger

import util
from mcts import MCTS

from mpi4py import MPI as mpi
comm = mpi.COMM_WORLD
rank = comm.Get_rank()
all = comm.Get_size()

class ProofEnv(gym.Env):
    def __init__(self, args, problem_source=None):
        super().__init__()
        self.args = args
        self.last_file = None

        self.action_space = spaces.Discrete(args.n_action_slots)
        if self.args.graph_embedding:
            assert self.args.graph_node_count == self.args.graph_embedding_size, "graph_node_count has to equal graph_embedding_size" # TODO
            # embS_space = spaces.Box(low=0.0, high=1.0, shape=(args.graph_node_count, args.graph_embedding_size), dtype=np.float32)
            # connS_space = spaces.Box(low=0.0, high=1.0, shape=(args.graph_node_count, args.graph_node_count), dtype=np.float32)
            # embAs_space = spaces.Box(low=0.0, high=1.0, shape=(args.n_action_slots, args.graph_node_count, args.graph_embedding_size), dtype=np.float32)
            # connAs_space = spaces.Box(low=0.0, high=1.0, shape=(args.n_action_slots, args.graph_node_count, args.graph_node_count), dtype=np.float32)
            # self.observation_space = spaces.Tuple((embS_space, connS_space, embAs_space, connAs_space))
            self.observation_space = spaces.Box(low=0.0, high=1.0, shape=(2, 1+ args.n_action_slots, args.graph_node_count, args.graph_node_count), dtype=np.float32)
        else:            
            self.observation_space = spaces.Box(low=-10.0, high=10.0, shape=(args.n_action_slots+args.state_dim, args.n_dim+1), dtype=np.float32)

        self.indexer = util.Indexer(args.n_dim, args.n_dim, feature_file=args.feature_file)
        self.n_dim = self.indexer.S_DIM

        if args.backend == "ocaml":
            import backend_ocaml
            self.backend = backend_ocaml.Backend(self.indexer, verbose=False,
                                                 fast_features=args.fast_features,
                                                 use_previous_state=args.use_previous_state,
                                                 use_previous_action=args.use_previous_action,
                                                 graph_embedding=args.graph_embedding,
                                                 graph_embedding_size=args.graph_embedding_size,
                                                 graph_node_count=args.graph_node_count,
                                                 det_steps=args.det_steps
            )
        elif args.backend == "prolog":
            import backend_prolog
            inner_dim = 10000
            self.backend = backend_prolog.Backend(inner_dim, self.indexer,
                                                  verbose=False,
                                                  print_proof=False
            )

        self.statistics = {} # we store history about the problems
        self.jackpots = []
        self.blacklist = [] # problems that we do not want to consider any more

        self.global_steps_to_remain = args.scheduler_starting_step
        self.global_episodes = 0
        self.global_success_ratio = 0

        self.global_step_counter = 0
        self.model=None

        if problem_source is not None:
            self.set_source(problem_source)

    def set_source(self, problem_source, generator_type="random"):
        
        def random_generator(files):
            if self.args.use_remove:
                while True:
                    files2 = tuple(set(files) - set(self.blacklist))
                    if len(files2) == 0:
                        yield random.choice(files)
                    else:
                        yield random.choice(files2)
            else:
                while True:
                    yield random.choice(files)

        def repeating_generator(files):
            while True:
                perm = np.random.permutation(len(files))
                for i in perm:
                    file = files[i]
                    for _ in range(self.args.episodes_per_problem):
                        if file in self.jackpots:
                            break
                        else:
                            yield file

        self.files = util.list_problems(problem_source)
        print("Current problems: ")
        for file in self.files:
            print("   ", file)
        if generator_type == "random":
            self.file_generator = random_generator(self.files)
        elif generator_type == "repeating":
            self.file_generator = repeating_generator(self.files)
        self.reset()

    def set_model(self, model):
        self.model=model


    # this returns a dictionary that fully describes the proof state (so it can be restored)
    # no side effect
    def process(self, backend_output):
        state, action_list, done = backend_output
        action_count = len(action_list)
        env_dict = {"state":state, "action_list":action_list, "action_count":action_count, "done": done}
        return env_dict

    # look up the path where the proof might be
    def get_proof_filepath(self, filepath):
        filename = os.path.basename(filepath)
        proof_filepath = "{}/{}.proof".format(self.args.proof_dir, filename)
        if os.path.isfile(proof_filepath):
            return proof_filepath
        else:
            return None
        
    # no side effect
    def make_steps_in_proof(self, current_forwarded_proof, obs_state, env_dict):
        for step in current_forwarded_proof[:-1]: # all but the last step are fast steps
            self.backend.step_fast(int(step))
        if len(current_forwarded_proof) > 0:
            last_step = current_forwarded_proof[-1]
            env_dict = self.process(self.backend.step(int(last_step)))
            obs_state = self.construct_obs_state(env_dict)
        return obs_state, env_dict



    def reset(self):
        sys.stdout.flush()
        self.current_steps = []

        self.current_file = next(self.file_generator)

        if self.current_file not in self.statistics: # problem encountered the first time
            self.statistics[self.current_file] = {"success_ratio":0,
                                                  "episode":0,
                                                  "proofs":[],
                                                  "forwarded_steps":0,
                                                  "replay":[],
                                                  "mcts":MCTS(self.model, self.args.n_action_slots)
            }
            proof_filepath = self.get_proof_filepath(self.current_file)
            if proof_filepath is not None: # there is a proof file for the given problem
                with open(proof_filepath) as f:
                    proof_steps = json.load(f)
                    self.statistics[self.current_file]["proofs"].append(proof_steps)
                    if self.args.curriculum_allowed:
                        self.statistics[self.current_file]["forwarded_steps"] = len(proof_steps) - 1
        
        if self.args.use_replay and len(self.statistics[self.current_file]["replay"]) > 0 and random.randint(0,1) == 0:
            self.current_replay = random.choice(self.statistics[self.current_file]["replay"])
            return self.current_replay[0][0]
        else:
            self.current_replay=None

        
        if self.current_file == self.last_file:
            self.env_dict = self.process(self.backend.restart())
        else:
            self.env_dict = self.process(self.backend.start(self.current_file))
            self.last_file = self.current_file
        self.obs_state = self.construct_obs_state(self.env_dict)

        current_statistics = self.statistics[self.current_file]

        # make steps according to the curriculum if a proof is available
        if self.args.curriculum_allowed and (len(current_statistics["proofs"]) > 0):
            self.current_curriculum = True
            self.current_full_proof = random.choice(current_statistics["proofs"])
            proof_len = len(self.current_full_proof)
            if self.args.scheduler_type == "local":
                forwarded_steps = current_statistics["forwarded_steps"]
            elif self.args.scheduler_type == "global":
                forwarded_steps = max(0, proof_len - self.global_steps_to_remain)

            # randomly increase curriculum
            max_increase = min(self.args.add_rnd_steps_to_remain, forwarded_steps)
            forwarded_steps -= random.randint(0, max_increase)
            self.current_forwarded_proof = self.current_full_proof[:forwarded_steps]
            self.obs_state, self.env_dict = self.make_steps_in_proof(self.current_forwarded_proof, self.obs_state, self.env_dict)
        else:
            self.current_curriculum = False

        if self.args.use_replay:
            self.current_full_history = [[np.copy(self.obs_state), 0, False, {}]]

        return self.obs_state


    def step(self, action):
        if self.current_replay is not None:
            self.current_steps.append(-1)
            return self.current_replay[len(self.current_steps)]

        self.global_step_counter += 1
        if action >= self.env_dict["action_count"]:
            reward = self.args.illegal_reward
            episode_over = self.args.terminate_on_illegal
            print("ILLEGAL")
            # print(self.current_steps, self.env_dict["action_count"], action)
        else:
            if self.args.use_action_shuffle:
                real_action = self.action_indices[action]
            else:
                real_action = action
            self.current_steps.append(real_action)            
            self.env_dict = self.process(self.backend.step(int(real_action)))
            self.obs_state = self.construct_obs_state(self.env_dict)
            reward = self.construct_reward(self.env_dict)
            episode_over = self.construct_episode_over(self.env_dict)

            if self.args.use_replay:
                previous_state = self.current_full_history[-1][0]
                for i in range(self.args.n_action_slots):
                    if i != real_action:
                        previous_state[i] *= 0
                self.current_full_history.append([np.copy(self.obs_state), reward, episode_over, {}])


            current_statistics = self.statistics[self.current_file]
            if episode_over:
                self.update_curriculum(self.env_dict["done"])

                # if self.env_dict["done"] == 0:
                #     observation = self.obs_state.reshape((-1,) + self.obs_state.shape)
                #     reward = self.model.policy_pi.value(observation)
                #     # print("Giving reward {} for trajectory {}".format(reward, self.current_steps))

                if self.args.use_mcts:
                    assert not self.args.use_action_shuffle, "mcts not compatible with action shuffle"
                    assert not self.args.curriculum_allowed, "mcts not compatible with curriculum"
                    self.statistics[self.current_file]["mcts"].backpropagate(self.current_steps, reward)
            if self.env_dict["done"] == 1:
                self.update_proofs()  

        return self.obs_state, reward, episode_over, self.env_dict


    def construct_reward(self, env_dict):
        if env_dict["done"] == 1:
            reward = 1.0
        elif env_dict["done"] == -1:
            reward = self.args.failure_reward
        else:
            reward = 0

        # apply supervised reward
        if self.current_curriculum: # we are following a proof
            step_cnt = len(self.current_forwarded_proof) + len(self.current_steps)
            if len(self.current_full_proof) >= step_cnt: # we haven't yet passed the end of the target proof
                target_step = self.current_full_proof[step_cnt-1]
                real_step = self.current_steps[-1]
                if real_step == target_step:
                    reward += self.args.supervised_reward
                else:
                    reward -= self.args.supervised_reward                     
        return reward

    def construct_episode_over(self, env_dict):
        if env_dict["done"] != 0:
            return True
        if (self.args.max_exploration is not None): # disallow long paths
            # increase max exploration after every 20000 steps TODO
            current_max_exploration = self.args.max_exploration # * (self.global_step_counter // 20000 + 1)
            if len(self.current_steps) >= current_max_exploration:
                return True
        if self.current_curriculum and (len(self.current_forwarded_proof) + len(self.current_steps) >= len(self.current_full_proof) + self.args.known_proof_max_exploration):
            return True
        else:
            return False

    # to be called after a proof is found
    def update_proofs(self):
        if self.current_curriculum:
            proof = self.current_forwarded_proof + self.current_steps
        else:
            proof = self. current_steps

        # test if this is a new proof
        is_new_proof = True
        for old_proof in self.statistics[self.current_file]["proofs"]:
            if proof == old_proof:
                is_new_proof = False
                break
            if self.args.use_shortest_proof and len(proof) >= len(old_proof):
                is_new_proof = False
                break

        # update jackpots
        if not self.current_file in self.jackpots:
            self.jackpots.append(self.current_file)
            print("New problem solved: {} len {}, {}".format(self.current_file, len(proof), proof))
            print("Worker {} Jackpot count: {}".format(rank, len(self.jackpots)))
            self.statistics[self.current_file]["forwarded_steps"] = len(proof) - 1
            # logger.logkv("jackpots{}".format(rank), len(self.jackpots))

        # store new proof if allowed
        if self.args.can_replace_proof and is_new_proof:
            print("Found new proof: {} len {}, {}".format(self.current_file, len(proof), proof))
            if self.args.use_shortest_proof:
                self.statistics[self.current_file]["proofs"] = [proof]
                                                   
                if self.args.use_replay:
                    self.statistics[self.current_file]["replay"] = [self.current_full_history]  
            else:
                self.statistics[self.current_file]["proofs"].append(proof)
                if self.args.use_replay:
                    self.statistics[self.current_file]["replay"].append(self.current_full_history)
                

    def update_curriculum(self, done):

        def should_advance(episodes, success_ratio, forwarded_steps):
            if not self.current_curriculum: # we are not doing curriculum now
                return False, ""
            elif forwarded_steps <= 0: # we are at the end of curriculum
                return False, ""
            elif success_ratio > self.args.quick_progress_percentage: # accelerated
                return True, " ACCELERATED "
            elif episodes > self.args.steps_per_curriculum: # scheduled
                return True, " SCHEDULED   "
            else:
                return False, ""
            
        def update_aux(episodes, success_ratio, forwarded_steps, done, scheduler_type):
            episodes +=1
            success_ratio = (done==1) * (1-self.args.curriculum_decay) + self.args.curriculum_decay * success_ratio
            advance_curriculum, update_type = should_advance(episodes, success_ratio, forwarded_steps)

            if episodes % 50 == 0:
                print("{} Episodes: {}, success ratio: {}".format(self.current_file, episodes, success_ratio))
                
            if advance_curriculum:
                forwarded_steps -= 1
                episodes = 0
                success_ratio = 0
                print("{} {} curriculum: {} - {}".format(scheduler_type, update_type, self.current_file, forwarded_steps))
                

            if self.args.use_remove: # remove files that have been fully mastered
                if (forwarded_steps <= 0) and (success_ratio > self.args.quick_progress_percentage):
                    self.blacklist.append(self.current_file)
                    print("STOPPED training on {}".format(self.current_file))

            return episodes, success_ratio, forwarded_steps
        

        
        if self.args.scheduler_type == "local":
            episodes, success_ratio, forwarded_steps = update_aux(self.statistics[self.current_file]["episode"],
                                                                  self.statistics[self.current_file]["success_ratio"],
                                                                  self.statistics[self.current_file]["forwarded_steps"],
                                                                  done,
                                                                  "LOCAL")
            self.statistics[self.current_file]["episode"] = episodes
            self.statistics[self.current_file]["success_ratio"] = success_ratio
            self.statistics[self.current_file]["forwarded_steps"] = forwarded_steps
            
        elif self.args.scheduler_type == "global":
            episodes, success_ratio, forwarded_steps = update_aux(self.global_episodes,
                                                                  self.global_success_ratio,
                                                                  1,
                                                                  done,
                                                                  "GLOBAL")
            self.global_episodes = episodes
            self.global_success_ratio = success_ratio
            if forwarded_steps == 0:
                self.global_steps_to_remain += 1
            
                
    # no side effect except for self.action_indices
    def construct_obs_state(self, env_dict):
        if self.args.graph_embedding:
            return self.construct_obs_state_graph(env_dict)
        else:
            return self.construct_obs_state_enigma(env_dict)


    def construct_obs_state_graph(self, env_dict):
        assert self.args.graph_node_count == self.args.graph_embedding_size, "graph_node_count has to equal graph_embedding_size"
        [embS, connS, _] = env_dict["state"]
        embS = np.array(embS)
        connS = np.array(connS)
        
        action_list = env_dict["action_list"]
        embAs = [embS]
        connAs = [connS]
        for [embA, connA, _] in action_list:
            embA = np.array(embA)
            connA = np.array(connA)
            embAs.append(embA)
            connAs.append(connA)
        embAs = np.array(embAs)
        connAs = np.array(connAs)
        empty_slots = self.args.n_action_slots - len(action_list)
        empty_embAs = np.zeros((empty_slots, self.args.graph_node_count, self.args.graph_embedding_size))
        empty_connAs = np.zeros((empty_slots, self.args.graph_node_count, self.args.graph_node_count))
        embAs = np.concatenate([embAs, empty_embAs])
        connAs = np.concatenate([connAs, empty_connAs])
        result = np.array([embAs, connAs])
        return result

    def construct_obs_state_enigma(self, env_dict):
        if self.args.use_action_shuffle:
            if env_dict["action_count"] > self.args.n_action_slots: # more actions than action slots, we take a random sample
                self.action_indices = np.random.choice(range(env_dict["action_count"]), size = self.args.n_action_slots, replace=False)
                obs_state = [env_dict["action_list"][i] for i in self.action_indices]
            else:
                self.action_indices = np.arange(env_dict["action_count"])
                obs_state = env_dict["action_list"]
        else:
            if env_dict["action_count"] > self.args.n_action_slots:
                print("CLIPPING ACTIONS: {} has {} actions!!!".format(self.current_file, env_dict["action_count"]))
                self.blacklist.append(self.current_file)
            obs_state = env_dict["action_list"][:self.args.n_action_slots]
        for k in range(env_dict["action_count"], self.args.n_action_slots):
            obs_state.append(np.zeros(self.n_dim,))
        obs_state_np = np.array(obs_state)

        state = env_dict["state"]
        obs_state_np = np.concatenate([obs_state_np, state])


        action_count = min(env_dict["action_count"], self.args.n_action_slots)
        obs2 = np.concatenate((obs_state_np, np.zeros((len(obs_state_np),1))), axis=1)
        step_probs = self.statistics[self.current_file]["mcts"].step_probs(self.current_steps, obs2, action_count)
        step_probs = np.concatenate((step_probs, np.zeros(len(state))))
        step_probs = np.reshape(step_probs, (len(obs_state_np), 1))
        obs_state_np = np.concatenate([obs_state_np, step_probs], axis=1)

        # mask = np.ones((len(obs_state_np), 1))
        # mask[env_dict["action_count"]:self.args.n_action_slots,:] = 0
        # obs_state_np = np.concatenate([obs_state_np, mask], axis=1)
        return obs_state_np
