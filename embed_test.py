import numpy as np
import tensorflow as tf
import sys

import backend_ocaml
import util
from embed_model import read_data, train_model, predict, Graph, DEFAULT_ARGS

if len(sys.argv) < 2:
    assert False, "Need to provide at least one argument: \nembed_test.py <problemfile> [<proofsteps>]"

problem = sys.argv[1]
if len(sys.argv) >= 3:
    proof = [int(x) for x in (sys.argv[2].split(','))]
else:
    proof = []

# datafile = "trajectory.json"
# modelfile = "tmp/model_simple_pure"
# datafile = "robinson_random_longer1_trajectory.json"
# modelfile = "tmp/model_random_longer1"
# datafile = "robinson_noproof_random_trajectory.json"
# modelfile = "tmp/model_noproof_random"

# datafile = "baseline_random_longer1_trajectory.json"
# modelfile = "tmp/model_baseline_random_longer1" 

datafile = "baseline_random_longer1_trajectory.json"
modelfile = "tmp/model_baseline_random_longer1_prob" 

args = DEFAULT_ARGS

config = tf.ConfigProto()
config.gpu_options.allow_growth=True
session = tf.Session(config=config)
graph = Graph(args)

if modelfile is None:
    datadict = read_data(datafile, args)
    print("Size: ", len(datadict.rewards))
    print("Positive: ", np.sum(datadict.rewards > 0))
    train_model(session, graph, args, datadict)
else:
    saver = tf.train.Saver(max_to_keep=None)
    saver.restore(session, modelfile)
    print("Graph restored from ", modelfile)

indexer = util.Indexer(args.EMBEDDING_SIZE, args.EMBEDDING_SIZE)
backend = backend_ocaml.Backend(indexer, verbose=False, fast_features=False, use_previous_action=False, use_previous_state=False)

def start():
    global steps
    _, _, action_list, _, done = backend.start(problem)
    action_count = len(action_list)
    best_action = print_state(action_count)
    steps = []
    return action_count, done, best_action

def step(s):
    global steps
    print("Step count: ", len(steps) + 1)
    done, action_count = backend.step_fast(s)
    best_action = print_state(action_count)
    steps.append(s)
    return action_count, done, best_action

def print_state(action_count):
    backend.print_state()
    if action_count == 0:
        return 0
    goal = backend.get_holstep_state()[0]
    action_probs = []
    for i in range(action_count):
        action = backend.get_holstep_action(i)
        prediction = predict(session, graph, args, goal, action)
        action_probs.append(prediction)
    action_probs = action_probs / np.sum(action_probs)
    best_action = np.argmax(action_probs)
    action_probs = action_probs.round(2)
    print("Action probabilities: {}".format(list(action_probs)))
    print("======================================")
    return best_action
    

count, done, best_action = start()
while done == 0:
    print("STEP ", best_action)
    count, done, best_action = step(best_action)

# for i, st in enumerate(proof):
#     print("step ", i) 
#     ac_count, done = step(st)
#     print("Done: ", done)

    
print("Index sequence: ", steps)
if done == 1:
    print("SUCCESS")
else:
    print("FAILURE")
