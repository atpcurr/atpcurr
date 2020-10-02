import time
import numpy as np
import os
import sys

# from fcop_env import ProofEnv, StageScheduler, Container
from stable_baselines import PPO2, logger
from ppo import PPO1
import ProofEnv
import util
import mcts

from neptune_utils import get_configuration

PRINT_PROBS = False
PROB_LIMIT = 1e-1 # discard actions with probability less than PROB_LIMIT
MAX_DEPTH = sys.getrecursionlimit() - 1


def prove_nonrecursive(args, model, env, t0):

    rem_actions = None
    rem_actions_stack = []
    rem_probs = None
    rem_probs_stack = []

    time_limit = args.evaltime

    t0_stack = []
    time_limit_stack = []
    
    while True:
        if env.env_dict["done"] == 1:
            return "success", len(env.current_steps)

        if time.time() - t0 > time_limit:
            if len(rem_actions_stack) == 0:
                return "timeout", 0
            else:
                # print("timeout backtrack")
                env.backtrack()
                rem_actions = rem_actions_stack.pop()
                rem_probs = rem_probs_stack.pop()
                t0 = t0_stack.pop()
                time_limit = time_limit_stack.pop()


        if (env.env_dict["done"] == 0) and (rem_actions is None):
            obs = env.construct_obs_state(env.env_dict)
            probs = model.action_probability(obs)
            probs = probs[:env.env_dict["action_count"]]
            prob_order = np.sort(probs)
            action_order = np.argsort(probs)
            action_order = action_order[prob_order > PROB_LIMIT]
            prob_order = prob_order[prob_order > PROB_LIMIT]
            rem_actions = action_order[:]
            rem_probs = prob_order[:]
            if PRINT_PROBS:
                print("probs: ", probs)
                print("Action order: ", action_order)
        elif (env.env_dict["done"] == 0) and (len(rem_actions) > 0):
            t0_stack.append(t0)
            time_limit_stack.append(time_limit)
            next_action = rem_actions[-1]
            rem_actions = rem_actions[:-1]
            rem_actions_stack.append(rem_actions)
            t1 = time.time()
            next_limit = (time_limit - t1 + t0) * rem_probs[-1] / np.sum(rem_probs)
            rem_probs = rem_probs[:-1]
            rem_probs_stack.append(rem_probs)
            
            t0 = t1
            time_limit = next_limit
            rem_actions = None
            rem_probs = None

            env.step(next_action)
        else:
            if len(rem_actions_stack) == 0:
                return "failure", 0
            else:
                # print("failure backtrack")
                env.backtrack()
                rem_actions = rem_actions_stack.pop()
                rem_probs = rem_probs_stack.pop()
                t0 = t0_stack.pop()
                time_limit = time_limit_stack.pop()

                
def prove(args, model, env, obs, t0, depthLimit):
    
    def doact(action_index, depthLimit):
        new_obs, reward, over, info = env.step(action_index)
        if info["done"] == 1:
            return "success"
        elif info["done"] == 0:
            status, prooflen =  prove(args, model, env, new_obs, t0, depthLimit)
            return status
        else:
            env.backtrack()
            # print("backtrack")
        return "failure"

    if time.time() - t0 > args.evaltime:
        return "timeout", 0

    if depthLimit < 0:
        return "failure", 0

    probs = model.action_probability(obs)
    probs = probs[:env.env_dict["action_count"]]
    prob_order = np.array(list(reversed(np.sort(probs))))
    action_order = np.array(list(reversed(np.argsort(probs))))
    action_order = action_order[prob_order > PROB_LIMIT]
    if PRINT_PROBS:
        print("probs: ", probs)
        print("Action order: ", action_order)
        print("Prob order: ", prob_order)
    for i in action_order:
        # env.backend.print_state()
        # print("Action {}/{} ".format(i, env.env_dict["action_count"]-1))
        status = doact(i, depthLimit-1)
        if status == "success":
            return "success", len(env.current_steps)
        elif status == "timeout":
            return "timeout", 0
    return "failure", 0


def prove_nobacktrack(args, model, env, obs, t0, evaltype, evaltime):
    prove.actions = 0
    while True:
        prove.actions += 1
        t1 = time.time()
        if model is None:
            probs = np.ones(env.env_dict["action_count"]) / env.env_dict["action_count"]
        elif args.use_mcts:
            probs = obs[:,-1]
            probs = probs[:env.env_dict["action_count"]]
        else:
            probs = model.action_probability(obs)
            probs = probs[:env.env_dict["action_count"]]
            probs = probs / np.sum(probs)
        prove.guidance_time += time.time() - t1
        if evaltype == "det":
            action_index = np.argmax(probs)
        elif evaltype == "prob":
            action_index = np.random.choice(range(len(probs)), p=probs)
        else:
            assert False, "unknown evaltype {}".format(evaltype)
        if PRINT_PROBS:
            print(prove.actions, " probs:        ", probs)
            print(prove.actions, " action: ", action_index)
        obs, reward, over, info = env.step(action_index)
        if info["done"] == 1:
            return "success", prove.actions
        if info["done"] == -1:
            return "failure", 0
        if time.time() - t0 > evaltime:
            return "timeout", 0
        

def find_one_proof(args, model, env, file):
    env.set_source(file)
    env.args.curriculum_allowed = False
    env.args.max_exploration = None
    env.args.can_replace_proof = False
    env.args.use_replay=False
    env.args.use_action_shuffle=False

    success = 0
    prooflen = 0
    if args.evaltype == "mcts":
        evaltype = args.evaltype
        my_mcts = mcts.MCTS(model, args.n_action_slots)
        t0 = time.time()
        success, prooflen, attempts = my_mcts.build_tree(env, args.evaltime, args.evalcount)
        if success == 1:
            print ("Proof found: {}, len {}, time: {} sec,\n{}".format(file, prooflen, time.time() - t0, env.current_steps))
    else:
        for attempts in range(1, 1 + args.evalcount):
            obs = env.reset()
            t0 = time.time()
            if args.evaltype == "backtrack":
                status, prooflen = prove_nonrecursive(args, model, env, t0)
                evaltype = args.evaltype
            else:
                if attempts == 1:
                    evaltype = "det"
                    evaltime = 10000
                else:
                    evaltype = args.evaltype
                    evaltime = args.evaltime
                status, prooflen = prove_nobacktrack(args, model, env, obs, t0, evaltype, evaltime)
            if status == "success":
                print ("Proof found: {}, len {}, time: {} sec,\n{}".format(file, prooflen, time.time() - t0, env.current_steps))
                success = 1
                break
    if success == 0:
        print ("Failure: {}".format(file))
    return success, prooflen, attempts, evaltype

# def eval(args, evaldir, modelfile, model_index):

#     if modelfile is None:
#         model = None
#     else:
#         if args.model_type == "ppo2":
#             model = PPO2.load(modelfile)
#         elif args.model_type == "ppo1":
#             model = PPO1.load(modelfile)
#     env = ProofEnv.ProofEnv(args)
#     env.set_model(model)

#     proofs_found = 0
#     proofs_tried = 0
#     len_sum = 0.0
#     attempts_sum = 0.0
#     prove.guidance_time = 0

#     dirparts = evaldir.split("/")
#     if dirparts[-1] == "":
#         dirname = dirparts[-2]
#     else:
#         dirname = dirparts[-1]
#     evalprefix = "eval_{}_{}_{}_{}".format(model_index, dirname, args.evaltype, args.evalcount)

    
#     for filename in os.listdir(evaldir):
#         if filename.endswith(".p"):
#             name = os.path.join(evaldir, filename)
#             print("\n\nTrying to find proof for {}".format(name))
#             proofs_tried += 1
#             success, prooflen, attempts = find_one_proof(args, model, env, name)
#             if success == 1:
#                 proofs_found += 1
#                 len_sum += prooflen
#                 attempts_sum += attempts

#         print("Found: {}/{} proofs".format(proofs_found, proofs_tried))

#     print("\n\nEVALUATION")
#     print("   evaltime: {}".format(args.evaltime))
#     print("   evaldir: {}".format(dirname))
#     print("   model_index: {}".format(model_index))
#     print("   evaltype: {}".format(args.evaltype))
#     print("   evalcount: {}".format(args.evalcount))
#     print("   FOUND: {}/{}".format(proofs_found, proofs_tried))
#     print("   Avg proof length: {}".format(util.safediv(len_sum, proofs_found)))
#     print("   Avg attempts: {}".format(util.safediv(attempts_sum, proofs_found)))

#     # print("Guidance time: {}".format(prove.guidance_time))
#     # for t in ["cop_action_time", "cop_backtrack_time", "cop_nos_contras_time", "cop_st_features_time", "cop_contr_features_time", "state_time", "action_time"]:
#     #     print("{}: {}".format(t, getattr(env.backend, t)))

#     env.close()
#     del model


def eval_mpi(args, evaldir, modelfile, model_index):

    from mpi4py import MPI as mpi
    rank = mpi.COMM_WORLD.Get_rank()
    all = mpi.COMM_WORLD.Get_size()
    
    if modelfile is None:
        model = None
    else:
        if args.model_type == "ppo2":
            model = PPO2.load(modelfile)
        elif args.model_type == "ppo1":
            model = PPO1.load(modelfile)
    env = ProofEnv.ProofEnv(args)
    env.set_model(model)

    dirparts = evaldir.split("/")
    if dirparts[-1] == "":
        dirname = dirparts[-2]
    else:
        dirname = dirparts[-1]

    evalprefix = "eval_{}_{}_{}_{}".format(model_index, dirname, args.evaltype, args.evalcount)
    
    proofs_found = 0
    det_proofs_found = 0
    proofs_tried = 0
    len_sum = 0.0
    attempts_sum = 0.0
    prove.guidance_time = 0


    filenames_original = sorted(util.list_problems(evaldir))
    chunks = util.split_list(filenames_original, all, extensible=False)
    chunk = chunks[rank]
    for index in range(len(chunks[0])):
        if index >= len(chunk):
            tried, success, prooflen, attempts, det_success = (0, 0, 0, 0, 0)
        else:
            filepath = chunk[index]
            print("\n\nTrying to find proof for {}".format(filepath))
            success, prooflen, attempts, evaltype = find_one_proof(args, model, env, filepath)
            tried = 1
            det_success = success * (evaltype == "det")
        results = mpi.COMM_WORLD.gather((tried, success, prooflen, attempts, det_success), root=0)
        if rank == 0:
            # print(results)
            for i in range(len(results)):
                proofs_tried += results[i][0]
                succ = results[i][1]
                if succ == 1:
                    proofs_found += 1
                    len_sum += results[i][2]
                    attempts_sum += results[i][3]
                det_succ = results[i][4]
                if det_succ:
                    det_proofs_found +=1
            logger.record_tabular("update_no", proofs_tried)
            logger.record_tabular("{}_proofs_found".format(evalprefix), proofs_found)
            logger.record_tabular("{}_det_proofs_found".format(evalprefix), det_proofs_found)
            logger.record_tabular("{}_found".format(evalprefix), util.safediv(proofs_found, proofs_tried))
            logger.record_tabular("{}_avg_prooflen".format(evalprefix), util.safediv(len_sum, proofs_found))
            logger.record_tabular("{}_avg_attempts".format(evalprefix), util.safediv(attempts_sum, proofs_found))
            logger.dumpkvs()
            print("Found: {}({})/{} proofs".format(proofs_found, det_proofs_found, proofs_tried))
            sys.stdout.flush()


    print("\n\nEVALUATION {}".format(rank))
    print("   evaltime: {}".format(args.evaltime))
    print("   evaldir: {}".format(dirname))
    print("   model_index: {}".format(model_index))
    print("   evaltype: {}".format(args.evaltype))
    print("   evalcount: {}".format(args.evalcount))
    print("   FOUND: {}/{}".format(proofs_found, proofs_tried))
    print("   DET FOUND: {}/{}".format(det_proofs_found, proofs_tried))
    print("   Avg proof length: {}".format(util.safediv(len_sum, proofs_found)))
    print("   Avg attempts: {}".format(util.safediv(attempts_sum, proofs_found)))
    print("   Avg step time: {}".format(env.backend.step_time / env.backend.step_count))

    
    env.close()
    del env
    del model



def eval_file(args, evalfile, modelfile, model_index):

    if modelfile is None:
        assert False
    else:
        if args.model_type == "ppo2":
            model = PPO2.load(modelfile)
        elif args.model_type == "ppo1":
            model = PPO1.load(modelfile)
    env = ProofEnv.ProofEnv(args)
    env.set_model(model)

    prove.guidance_time = 0

    fileparts = evalfile.split("/")
    filename = fileparts[-1]
    evalprefix = "eval_{}_{}_{}_{}".format(model_index, filename, args.evaltype, args.evalcount)
    
    print("\n\nTrying to find proof for {}".format(evalfile))
    success, prooflen, attempts, evaltype = find_one_proof(args, model, env, evalfile)

    print("\n\nEVALUATION")
    print("   evaltime: {}".format(args.evaltime))
    print("   evalfile: {}".format(filename))
    print("   model_index: {}".format(model_index))
    print("   evaltype: {}".format(args.evaltype))
    print("   evalcount: {}".format(args.evalcount))
    print("   Success: {}".format(success))
    print("   Proof length: {}".format(prooflen))
    print("   Attempts: {}".format(attempts))
    print("   Avg step time: {}".format(env.backend.step_time / env.backend.step_count))
    
    env.close()
    del model



def main():
    global PRINT_PROBS
    args = get_configuration()
    args.state_dim = util.get_state_dim(args)

    PRINT_PROBS = True
    # modelfile = "results/robinson_simple/ppo1_fcop_train_0"
    modelfile = "results/robinson_simple_prolog/ppo1_fcop_train_0"
    args.evaltype="det"
    args.evalcount=1

    if True:
        evalfile = "theorems/robinson/simple/final/robinson_4m4__16.p"
        eval_file(args, evalfile, modelfile, 0)
        # evalfile = "theorems/robinson/simple/final/robinson_1m2__2.p"
        # eval_file(args, evalfile, modelfile, 0)
    else:
        # evaldir = "theorems/robinson/simple/final"
        # evaldir = "theorems/robinson/left_random/final"
        evaldir = "theorems/robinson/random/final2"
        eval_mpi(args, evaldir, modelfile, 0)


if __name__ == '__main__':
    main()
