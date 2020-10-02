import numpy as np
import ProofEnv

def vis_policy(env, model, problemFile):
    env.set_source(problemFile)

    obs_state = env.reset()
    trajectory = []
    action_count = env.env_dict["action_count"]
    episode_over = False

    while not episode_over:
        model_probs = model.action_probability(obs_state)
        mcts_probs = obs_state[:,-1]
        action = np.argmax(model_probs)
        print("\nNode:   ", trajectory)
        print("Actions:", action_count)
        print("MODEL:  ", model_probs[:action_count])
        print("MCTS :  ", mcts_probs[:action_count])
        print("Action: ", action)
        obs_state, _reward, episode_over, env_dict = env.step(action)
        action_count = env_dict["action_count"]
        trajectory += [action]
    print("\nNode:   ", trajectory)
    print("Actions:", action_count)
    
    
