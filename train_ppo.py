import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)
warnings.simplefilter(action='ignore', category=DeprecationWarning)

import time
import os
import numpy as np

# from stable_baselines import logger

from stable_baselines.common.vec_env import DummyVecEnv, SubprocVecEnv

from neptune_utils import get_configuration
import ProofEnv
from embed_policy import EmbeddingPolicy
from ppo_model import EnigmaPolicy
import util
import vis_policy

import eval

def main():

    args = get_configuration()
    args.state_dim = util.get_state_dim(args)

    if not os.path.exists(args.outdir):
        os.makedirs(args.outdir, exist_ok=True)

    if args.graph_embedding:
        class MyPolicy(EmbeddingPolicy):
            def __init__(self, sess, ob_space, ac_space, n_env, n_steps, n_batch, reuse=True, **_kwargs):
                super().__init__(sess, ob_space, ac_space, n_env, n_steps, n_batch, args, reuse=reuse, **_kwargs)
    else:
        class MyPolicy(EnigmaPolicy):
            def __init__(self, sess, ob_space, ac_space, n_env, n_steps, n_batch, reuse=True, **_kwargs):
                super().__init__(sess, ob_space, ac_space, n_env, n_steps, n_batch, args, reuse=reuse, **_kwargs)

                
    t0 = time.time()

    from mpi4py import MPI as mpi
    comm = mpi.COMM_WORLD
    rank = comm.Get_rank()
    all = comm.Get_size()

    gpus = os.environ["CUDA_VISIBLE_DEVICES"].split(',')
    gpu_count = len(gpus)
    gpu = gpus[rank % gpu_count]
    os.environ["CUDA_VISIBLE_DEVICES"] = gpu
    print("My rank is {} out of {}, using GPU {}".format(rank, all, gpu))


    if args.model_type == "ppo2":
        from stable_baselines import PPO2 as PPO
        env = SubprocVecEnv([(lambda: ProofEnv.ProofEnv(args)) for _ in range(args.parallel_envs)]) #, start_method="spawn")
    elif args.model_type == "ppo1":
        args.parallel_envs = 1
        env = DummyVecEnv([lambda: ProofEnv.ProofEnv(args)])
        # from stable_baselines import PPO1 as PPO
        from ppo import PPO1 as PPO
        
    
    if args.saved_model == None:
        myPolicy = MyPolicy
        if args.model_type == "ppo2":
            model = PPO(policy=myPolicy, env=env,
                        n_steps=args.actorbatch,
                        # nminibatches=args.optim_stepsize,
                        lam=0.95, gamma=args.gamma, noptepochs=4, ent_coef=args.entcoeff,
                        learning_rate=lambda f: f * 2.5e-4, cliprange=lambda f: f * 0.1, verbose=1)
        elif args.model_type == "ppo1":
            model = PPO(myPolicy, env,
                        verbose=2,
                        timesteps_per_actorbatch=args.actorbatch,
                        schedule=args.lr_schedule,
                        optim_stepsize=args.optim_stepsize,
                        entcoeff=args.entcoeff,
                        optim_batchsize=args.optim_batchsize,
                        gamma=args.gamma)
    else:
        print("Loading model from {}".format(args.saved_model))
        model = PPO.load(args.saved_model)
        model.set_env(env)

    counter = 0

    for ind in range(args.parallel_envs):
        env.env_method("set_model", model, indices=list(range(args.parallel_envs)))

    
    modelfiles = []
    for train_timestep, train_dir in zip(args.train_timesteps, args.train_dirs):
        problem_files = sorted(util.list_problems(train_dir))
        problem_files = util.split_list(problem_files, all)[rank]
        problem_files_splitted = util.split_list(problem_files, args.parallel_envs, extensible=False)

        if args.add_repeating_pretraining:
            for ind in range(args.parallel_envs):
                env.env_method("set_source", problem_files_splitted[ind], indices=[ind], generator_type="repeating")
            # all_thread_timestep = train_timestep * all
            print("PRETRAINING")
            model.learn(total_timesteps=train_timestep)
            print("Pretraining on {} finished in {}".format(train_dir, util.format_time(time.time() - t0)))
            
        for ind in range(args.parallel_envs):
            env.env_method("set_source", problem_files_splitted[ind], indices=[ind])
        # all_thread_timestep = train_timestep * all
        model.learn(total_timesteps=train_timestep)

        modelfile = "{}/ppo1_fcop_train_{}".format(args.outdir, counter)
        modelfiles.append(modelfile)
        if rank == 0:
            model.save(modelfile)
            # logger.logkv("finished_train_problems", counter)
        counter += 1
        
        
        print("Training on {} finished in {}".format(train_dir, util.format_time(time.time() - t0)))
        statistics_list = env.get_attr("statistics", indices = list(range(args.parallel_envs))) 
        blacklist_list = env.get_attr("blacklist",  indices = list(range(args.parallel_envs)))
        for i, statistics in enumerate(statistics_list):
            print("ENV {} - {} - blacklist: {}\n".format(rank, i, blacklist_list[i])),
            util.print_problemdict(statistics, rank)
            
            # for f in statistics:
            #     statistics[f]["mcts"].display_tree([0])   
            
        # util.print_problemdict(env.envs[0].statistics)

    if len(args.train_dirs) > 0 and len(args.train_timesteps) > 0: # we did training
        print("We have finished training, rank {}".format(rank))

        # for p in problem_files:
        #     vis_policy.vis_policy(env.envs[0], model, p)


        env.close()
        del env
        del model

    # here we wait for everyone
    comm.Barrier()
    print("We have started evaluation, rank {}".format(rank))

    # evaluation without training
    if (args.saved_model is not None) and (len(args.train_dirs) == 0): # no training, just evaluation
        modelfiles = [args.saved_model]

    for evaldir in args.evaldirs:
        for model_index, modelfile in enumerate(modelfiles):
            eval.eval_mpi(args, evaldir, modelfile, model_index)

            # here we wait for everyone
            comm.Barrier()


if __name__ == '__main__':
    main()
