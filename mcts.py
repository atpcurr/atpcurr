import numpy as np
import math
import time

class MCTS():
    def __init__(self, model, action_slots, cp = math.sqrt(2)):
        self.explored = []
        self.trajectory = {}
        self.value = {}
        self.visit = {}
        self.model = model
        self.cp = cp
        self.action_slots = action_slots

    def get_child_probs(self, obs):
        return self.model.action_probability(obs)

    def add_node(self, key, trajectory):
        assert key not in self.explored

        self.explored.append(key)
        self.trajectory[key] = trajectory
        self.value[key] = 0
        self.visit[key] = 0

    def step_probs(self, trajectory, obs, action_count):
        probs = np.zeros(self.action_slots)
        if action_count == 0:
            return probs
        
        key = bytes(trajectory)
        if key not in self.explored:
            for i in range(action_count):
                probs[i] = 1.0 / action_count
            return probs

        prior_probs = self.get_child_probs(obs)
        # prior_probs = np.ones(action_count) / action_count

        for i in range(action_count):
            child_trajectory = trajectory + [i]
            child_key = bytes(child_trajectory)
            probs[i] = self.get_ucb(self.visit[key], prior_probs[i], child_key)
        probs = probs / np.sum(probs)
        return probs

    def get_ucb(self, parent_visit, prior_prob, child_key):
        parent_visit = max(2, parent_visit)
        if child_key not in self.explored:
            uct = self.cp * prior_prob * math.sqrt(math.log(parent_visit))
        else:    
            uct = self.value[child_key] / self.visit[child_key] + self.cp * prior_prob * math.sqrt(math.log(parent_visit) / self.visit[child_key])
        return uct

    def backpropagate(self, trajectory, reward):
        for i in range(len(trajectory)+1):
            current_trajectory = trajectory[:i]
            key = bytes(current_trajectory)
            if key not in self.explored:
                self.add_node(key, current_trajectory)
            self.visit[key] += 1
            self.value[key] += reward

    def display_tree(self, trajectory):
        key = bytes(trajectory)
        if key not in self.explored:
            return False
        else:
            print("{}: visit {}, avg value: {}".format(trajectory, self.visit[key], self.value[key] / self.visit[key]))
            for i in range(self.action_slots):
                self.display_tree(trajectory + [i])
            return True

    def extend(self, env):
        # print("-------------- EXTEND --------------")
        trajectory = []
        key = bytes(trajectory)
        obs = env.reset()
        episode_over = False
        reward = 0
        
        while (key in self.explored) and not episode_over:
            action_count = env.env_dict["action_count"]
            probs = self.step_probs(trajectory, obs, action_count)
            action = np.argmax(probs)
            # print("Step: {} -> {} -> {}".format(trajectory, probs[:action_count], action))
            trajectory += [action]
            key = bytes(trajectory)
            obs, reward, episode_over, _env_dict = env.step(action)
        if key not in self.explored:
            # print("adding: ", trajectory)
            self.add_node(key, trajectory)
        self.backpropagate(trajectory, reward)

        return env.env_dict["done"], len(trajectory)

    def build_tree(self, env, evaltime, evalcount):
        attempts = 0
        t0 = time.time()
        while True:
            if attempts >= evalcount:
                return 0, 0, attempts
            if time.time() - t0 > evaltime:
                return 0, 0, attempts
            
            attempts += 1
            success, prooflen = self.extend(env)
            if success == 1:
                return 1, prooflen, attempts
