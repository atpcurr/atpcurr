import time
import numpy as np
import os

from stable_baselines import PPO1
from fcop_env import ProofEnv, StageScheduler, Container


def prove_nobacktrack(model, env, evaltype, evaltime):
    t0 = time.time()
    env.args.proof_allowed = False
    env.args.max_exploration = None
    obs = env.reset()

    while True:
        probs = model.action_probability(obs)
        probs = probs[:env.env_dict["action_count"]]
        probs = probs / np.sum(probs)

        if evaltype == "det":
            action_index = np.argmax(probs)
        elif evaltype == "prob":
            action_index = np.random.choice(range(len(probs)), p=probs)
        else:
            assert False, "unknown evaltype {}".format(evaltype)
        obs, reward, over, info = env.step(action_index)
        if info["done"] == 1:
            return "success", env.real_steps
        elif (info["done"] == -1):
            return "failure", None
        elif time.time() - t0 > evaltime:
            return "timeout", None

      

def eval_on_file(args, model, env, evalcount, evalfile, evaltype, evaltime):
    env.set_file(evalfile)

    timeouts = 0
    successes = 0
    failures = 0
    lengths = 0
    for _ in range(evalcount): ### PARALLELIZE THIS!!!

        # THIS ONLY NEEDS TO BE RECREATED IF EXECUTED IN PARELLEL
        # IN THE SAME THREAD, ONE env OBJECT IS SUFFICIENT
        stage_scheduler = StageScheduler(args)
        container = Container(args, stage_scheduler=stage_scheduler)
        env = ProofEnv(args, container, stage_scheduler)

        (status, proof) = prove_nobacktrack(model, env, evaltype, evaltime)
        if status == "success":
            successes += 1
            lengths += len(proof)
        elif status == "failure":
            failures += 1
        elif status == "timeout":
            timeouts += 1
        else: assert False, "Unknown status {}".format(status)

    success_ratio = successes * 1.0 / evalcount
    failure_ratio = failures * 1.0 / evalcount
    timeout_ratio = timeouts * 1.0 / evalcount

    if successes > 0:
        avglen = lengths * 1.0 / successes
    else:
        avglen = 0

    return success_ratio, failure_ratio, timeout_ratio, avglen


def eval_on_dir(args, env, modelFile, evalcount, evaldir, evaltype, evaltime):
    model = PPO1.load(modelFile)

    successes = []
    failures = []
    timeouts = []
    lenghts = []
    for filename in os.listdir(evaldir): ### PARALLELIZE THIS!!!
        if filename.endswith(".p"):
            evalfile = os.path.join(dir, filename)
            success_ratio, failure_ratio, timeout_ratio, avglen = eval_on_file(args, model, env, evalcount, evalfile, evaltype, evaltime)
            successes.append(success_ratio)
            failures.append(failure_ratio)
            timeouts.append(timeout_ratio)
            lenghts.append(avglen)

    return successes, failures, timeouts, lenghts
