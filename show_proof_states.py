import numpy as np

import backend_ocaml
# import backend_prolog
import util
import sys

if len(sys.argv) < 2:
    assert False, "Need to provide at least one argument: \nshow_proof_states.py <problemfile> [<proofsteps>]"

problem = sys.argv[1]
if len(sys.argv) >= 3:
    proof = [int(x) for x in (sys.argv[2].split(','))]
else:
    proof = []


N_DIM = 100

indexer = util.Indexer(N_DIM, N_DIM)
backend = backend_ocaml.Backend(indexer, verbose=False,
                                fast_features=False,
                                use_previous_action=False,
                                use_previous_state=False,
                                det_steps=False)

def start():
    global steps, hashes, states, actions
    state, action_list,  done = backend.start(problem)
    # print("State: ", state)
    backend.print_state()
#    for i, _ in enumerate(action_list):
#        backend.print_action(i)
#    print("Hashes: ", [backend.index_to_hash(index) for index in range(len(action_list))])
#    print("Hashes: ", backend.get_hashes())
    print("======================================")
    steps = []
    hashes = []
    states = [state]
    actions = [action_list]
    return len(action_list), done

def step(st):
    global steps, hashes, states, actions
    print("action {}".format(st))
    state, action_list, done = backend.step(st)
    # print("State: ", state)
    backend.print_state()
#    for i, _ in enumerate(action_list):
#        backend.print_action(i)
#    print("Hashes: ", [backend.index_to_hash(index) for index in range(len(action_list))])
#    print("Hashes: ", backend.get_hashes())
    print("======================================")
    steps.append(st)
    # hashes.append(h)
    states.append(state)
    actions.append(action_list)
    return len(action_list), done

start()

for i, st in enumerate(proof):
    print("step ", i) 
    ac_count, done = step(st)
    print("Done: ", done)

    
print("Index sequence: ", steps)
