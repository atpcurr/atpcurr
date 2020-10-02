import os
import argparse

import params_parse


def getArgs():
    parser = argparse.ArgumentParser()

    # locations
    parser.add_argument('ini_file', nargs='*', help="Ini file to use for configuration")
    parser.add_argument('--outdir', dest="outdir", default="results/trash", help="Directory for saving output visualizations and models.")
    parser.add_argument('--saved_model', dest="saved_model", default=None, help="Location of a saved model file")
    parser.add_argument('--proof_dir', dest="proof_dir", default="theorems/proofs/fcoplib_20181109", help="Directory containing proofs.")

    parser.add_argument('--optim_stepsize', dest="optim_stepsize", default=1e-4, help="Optimizer step size (learning rate)")
    parser.add_argument('--lr_schedule', dest="lr_schedule", default="linear", help="linear/constant")
    parser.add_argument('--network_layers', dest="network_layers", default="512,512,512,512", help="Optimizer step size")
    parser.add_argument('--steps_per_curriculum', dest="steps_per_curriculum", default=10000, help="iterations for each curriculum step")
    parser.add_argument('--train_timesteps', dest="train_timesteps", default=510000, help="Iterations in stage 1")
    parser.add_argument('--test_timesteps', dest="test_timesteps", default=100000, help="Iterations in stage 2")
    parser.add_argument('--n_dim', dest="n_dim", default=512, help="Size of feature space")
    parser.add_argument('--feature_file', dest="feature_file", default=None, help="File that contains all features that appear in the proofs. Can be None.")
    parser.add_argument('--train_dirs', dest="train_dirs", default="theorems/gen_mul_new/stage1", help="Locations of the training problem set")
    parser.add_argument('--test_dirs', dest="test_dirs", default="theorems/gen_mul_new/stage2", help="Locations of the test problem set")
    parser.add_argument('--quick_progress_threshold', dest="quick_progress_threshold", default=None, help="Increase number of steps to remain after a threshold count of consecutive successful proofs.")
    parser.add_argument('--add_rnd_steps_to_remain', dest="add_rnd_steps_to_remain", default=0, help="Add randint(0, add_rnd_steps_to_remain) to the remaining steps in the proof.")
    parser.add_argument('--frequency', dest="frequency", default=10000, type=int, help="How often should we save the model")
    parser.add_argument('--n_action_slots', dest="n_action_slots", default=12, help="Number of acton slots")
    parser.add_argument('--evaltime', dest="evaltime", default=10, type=int, help="Time allowed for evaluation in sec")
    parser.add_argument('--value_gets_actions', dest="value_gets_actions", default=False, help="If True, the value function uses actions as well")
    parser.add_argument('--actions_added', dest="actions_added", default=False, help="If True and value_gets_actions, then we first add all action vectors and then concatenate this with the state")
    parser.add_argument('--max_exploration', dest="max_exploration", default=50, help="The number of steps allowed in a single episode")
    parser.add_argument('--entcoeff', dest="entcoeff", default=0.01, type=float, help="Entropy loss weight")
    parser.add_argument('--gamma', dest="gamma", default=0.99, type=float, help="Discount factor")
    parser.add_argument('--quick_progress_percentage', dest="quick_progress_percentage", type=float, default=None, help="Increase number of steps to remain after given percentage of episodes succeeded.")
    parser.add_argument('--illegal_reward', dest="illegal_reward", default=-0.1, type=float, help="Reward if illegal action is selected")
    parser.add_argument('--failure_reward', dest="failure_reward", default=-1.0, type=float, help="Reward if proof fails")
    parser.add_argument('--success_reward', dest="success_reward", default=1.0, type=float, help="Reward if proof succeeds")
    parser.add_argument('--supervised_reward', dest="supervised_reward", default=0.1, help="If nonzero, the system is rewarded for following the given proof")
    parser.add_argument('--terminate_on_illegal', dest="terminate_on_illegal", default=False, help="If True, terminate episode upon illegal action")

    parser.add_argument('--scheduler_starting_step', dest="scheduler_starting_step", type=int, default=1, help="Initial steps_to_remain")
    parser.add_argument('--scheduler_type', dest="scheduler_type", default="local", help="local/global")

    parser.add_argument('--proof_allowed', dest="proof_allowed", default=True, help="If True, the system can use saved proofs")
    parser.add_argument('--known_proof_max_exploration', dest="known_proof_max_exploration", default=5, help="When a proof is given, do not explore further than proof length + knwon_proof_max_exploration")
    parser.add_argument('--fast_features', dest="fast_features", default=True, help="If true, use incomplete but fast features from ocaml backend")
    parser.add_argument('--wd', dest="wd", default=0.0, type=float, help="Weight decay coefficient")
    parser.add_argument('--actorbatch', dest="actorbatch", default=512, type=int, help="batch size")
    parser.add_argument('--latent_dim', dest="latent_dim", default=None, type=int, help="If not None, goal, path, lem,todos are first mapped to latent_dim by a single dense relu layer")
    parser.add_argument('--use_previous_state', dest="use_previous_state", default=False, help="If True, the featues contain the previous state as well")
    parser.add_argument('--use_previous_action', dest="use_previous_action", default=False, help="If True, the featues contain the previous action as well")
    parser.add_argument('--can_replace_proof', dest="can_replace_proof", default=True, help="If True and we find a shorter proof, we are allowed to replace the original")

    # evaluation
    parser.add_argument('--evaldir', dest="evaldir", default=None, help="Directory that contains problems to evaluate.")
    parser.add_argument('--evalfile', dest="evalfile", default=None, help="File that contains a problem to evaluate.")
    parser.add_argument('--evalsuffix', dest="evalsuffix", default="_train_0", help="Suffix of model to evaluate on.")
    parser.add_argument('--evaltype', dest="evaltype", default="det", help="det/prob : deterministic vs probabilistic evaluation.")
    parser.add_argument('--evalcount', dest="evalcount", default=1, type=int, help="How many times should we run evaluation. Only makes sense to have >1 if evaltype = prob")

    default_args_param = parser.parse_args([])
    args_param = parser.parse_args()
    args = params_parse.mergeParamsWithInis(default_args_param, args_param)

    # make sure the following params are tuples
    for k in ("network_layers", "test_dirs", "train_dirs"):
        if k in args.keys():
            args[k] = ensure_tuple(args[k])
    
    params_parse.dumpParams(args, args.outdir + "/all_params.ini")
    return args

def ensure_tuple(v):
    if isinstance(v, str):
        return (v, )
    if not isinstance(v, (tuple,)):
        return (v, )
    return v
