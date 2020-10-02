from ctypes import *
import time
import numpy as np
import json

from util import ClausePrinter
import embed

HOLSTEP = False

#library_path = "./fcoplib_20181109.so"
#library_path = "./fcoplib_20181130.so"
# library_path = "./fcoplib_20181221.so"
library_path = "./fcoplib_20190513.so"
# library_path = "./fcoplib_20191220.so"

cop_lib = cdll.LoadLibrary(library_path)
cop_lib.cop_caml_init()
cop_start = cop_lib.py_start
cop_start.restype = py_object
cop_start.argtypes = [c_char_p]
cop_action = cop_lib.py_action
cop_action.restype = py_object
cop_backtrack = cop_lib.py_backtrack
cop_backtrack.restype = None

cop_restart = cop_lib.py_restart
cop_restart.restype = py_object

cop_st_print = cop_lib.py_st_print
cop_st_print.restype = None

cop_st_features = cop_lib.py_st_features
cop_st_features.restype = py_object
cop_st_features_fast = cop_lib.py_st_features_fast
cop_st_features_fast.restype = py_object

cop_contr_features = cop_lib.py_contr_features
cop_contr_features.restype = py_object
cop_contr_represent = cop_lib.py_contr_represent
cop_contr_represent.restype = py_object

cop_st_represent = cop_lib.py_st_represent
cop_st_represent.restype = py_object

cop_all_contras = cop_lib.py_all_contras
cop_all_contras.restype = py_object
cop_nos_contras = cop_lib.py_nos_contras
cop_nos_contras.restype = py_object

cp = ClausePrinter()

class Backend(object):
    def __init__(self, indexer, verbose=True, fast_features=True, use_previous_state=False, use_previous_action=False, graph_embedding=False, graph_embedding_size=None, graph_node_count=None, det_steps=False):
        self.indexer = indexer
        self.verbose = verbose
        self.fast_features = fast_features
        self.use_previous_state = use_previous_state
        self.use_previous_action = use_previous_action
        self.det_steps = det_steps
        self.cop_action_time = 0
        self.cop_backtrack_time = 0
        self.cop_nos_contras_time = 0
        self.cop_st_features_time = 0
        self.cop_contr_features_time = 0
        self.state_time = 0
        self.action_time = 0
        self.previous_actions_history = []
        self.graph_embedding = graph_embedding
        self.graph_embedding_size = graph_embedding_size
        self.graph_node_count = graph_node_count
        self.trajectories = []
        self.det_steps=det_steps
        self.step_time = 0.0
        self.step_count = 0

    def start(self, file, pathLim=0):
        self.file = file
        (done, action_count) = cop_start(file.encode('UTF-8'))
        if self.det_steps:
            while action_count == 1:
                (done, action_count) = cop_action(0)
        return self.process(done, action_count, None, None)
    def restart(self, pathLim=0):
        (done, action_count) = cop_restart()
        if self.det_steps:
            while action_count == 1:
                (done, action_count) = cop_action(0)
        return self.process(done, action_count, None, None)
    def step(self, action_index):
        self.step_count +=1
        t0 = time.time()
        action_index = int(action_index)
        previous_state = self.embed_state()
        previous_action = self.embed_action_at_index(action_index)
        (done, action_count) = cop_action(action_index)
        if self.det_steps:
            while action_count == 1:
                (done, action_count) = cop_action(0)
        result = self.process(done, action_count, previous_state, previous_action)
        self.step_time += (time.time() - t0)
        return result
    def step_fast(self, action_index):
        self.step_count +=1
        t0 = time.time()
        action_index = int(action_index)
        (done, action_count) = cop_action(action_index)
        if self.det_steps:
            while action_count == 1:
                (done, action_count) = cop_action(0)
        self.step_time += (time.time() - t0)
        return done, action_count

    # def backtrack(self):
    #     if self.use_previous_action:
    #         self.previous_actions_history.pop()
    #         if len(self.previous_actions_history) > 0:
    #             self.previous_actions = self.previous_actions_history[-1]
    #         # assert False, "Backtrack does not update previous_actions"
    #     t1 = time.time()
    #     cop_backtrack()
    #     self.cop_backtrack_time += time.time() - t1
    def hash_to_index(self, hash):
        t1 = time.time()
        result = cop_nos_contras().index(hash)
        self.cop_nos_contras_time += time.time() - t1
        return result
    def index_to_hash(self, index):
        t1 = time.time()
        result = cop_nos_contras()[index]
        self.cop_nos_contras_time += time.time() - t1
        return result
    def get_hashes(self):
        return cop_nos_contras()
    def get_holstep_state(self):
        return cop_st_represent()
    def get_holstep_action(self, action):
        return cop_contr_represent(action)
    def print_state(self):
        cop_st_print()
        if HOLSTEP:
            rep = cop_st_represent()
            print("\n-----------")
            print("Holstep format: ", rep)
            print("Holstep goal: ", cp.stringify(rep[0]))
            print("Holstep path: ", cp.stringify(rep[1]))
            print("Holstep lemmas: ", cp.stringify(rep[2]))
            print("Holstep moregoals: ", cp.stringify(rep[3]))
            print("Extra features: ", cp.get_leftright_symbols(rep[0], ("mul","plus")))
            print("-----------\n")

    def print_action(self, action):
        rep = cop_contr_represent(action)
        print("Action {} Holstep format: {}, {}".format(action, cp.stringify(rep), rep))

    def embed_action_at_index(self, action_index):
        if self.graph_embedding:
            raw_action = self.get_holstep_action(action_index)
            raw_action = embed.normalize_vars(raw_action)
            raw_action = embed.add_or_node(raw_action)
            action = embed.clause2embedding(raw_action, self.graph_embedding_size, self.graph_node_count)
        else:
            action = cop_contr_features(action_index)
            _action_id, action = self.indexer.store_action(action)
        return action

    def embed_state(self):
        if self.graph_embedding:
            goal = self.get_holstep_state()[0] # TODO more state components
            goal = embed.normalize_vars(goal)
            state = embed.clause2embedding(goal, self.graph_embedding_size, self.graph_node_count)
        else:
            if self.fast_features:
                goal = cop_st_features_fast()
                state = self.indexer.store_state(goal)
            else:
                (goal, path, lem, moregoals) = cop_st_features()
                state = self.indexer.store_state(goal, path, lem, moregoals)
        return state

        
    def process(self, done, action_count, previous_state, previous_action):
        if self.verbose: cop_st_print()
        if done != 1 and action_count == 0:
            done = -1

        state = self.embed_state()
        action_list=[]
        for i in range(action_count):
            action = self.embed_action_at_index(i)
            action_list.append(action)

        if self.use_previous_state:
            if previous_state is None:
                previous_state = state
            state = np.concatenate([state, previous_state], axis=0)
        if self.use_previous_action:
            if previous_action is None:
                previous_action = state[0]
            state = np.insert(state, len(state), previous_action, axis=0)

        return state, action_list, done

    def replay_and_store(self, steps, reward, trajectory_file):
        if (self.file, steps) in self.trajectories:
            return
        else:
            self.trajectories.append((self.file, steps))
            
        string_stream = open(trajectory_file + ".txt", "a")
        string_stream.write("\n---------------\n")
        string_stream.write("Episode begins, reward {}\n".format(reward))

        json_stream = open(trajectory_file +".json", "a")

        self.restart()
        
        for a in steps:
            (goal, path, lem, moregoals) = self.get_holstep_state()
            action = self.get_holstep_action(int(a))
            json_data = [reward, goal, path, lem, moregoals, action]
            json.dump(json_data, json_stream), json_stream.write("\n")
            string_stream.write("\nGoal       {}\n".format(goal))
            string_stream.write("Path       {}\n".format(path))
            string_stream.write("Lem        {}\n".format(lem))
            string_stream.write("More goals {}\n".format(moregoals))
            string_stream.write("Action     {}\n".format(action))            
            self.step_fast(a)
            
        string_stream.write("Episode ends\n")
        string_stream.close
        json_stream.close

