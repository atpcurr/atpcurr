import sys, os
from neptune_utils import simple_handle_experiment
from munch import Munch

base_config = Munch(actions_added=False,
                    actorbatch=512,
                    add_repeating_pretraining=False,
                    add_rnd_steps_to_remain=0,
                    can_replace_proof=True,
                    curriculum_allowed=False,
                    curriculum_decay=0.7,
                    det_steps=True,
                    entcoeff=0.02,
                    episodes_per_problem=1000,
                    evaldirs=[],
                    evalprobcount=1,
                    evaltime=1,
                    evaltype="det",
                    failure_reward=0,
                    fast_features=True,
                    feature_file=None,
                    gamma=0.95,
                    graph_embedding=False,
                    graph_embedding_size=40,
                    graph_hidden_layers=[100,100],
                    graph_node_count=40,
                    graph_update_iteration=3,
                    illegal_reward=0,
                    known_proof_max_exploration=0,
                    latent_dim=None,
                    lr_schedule="constant",
                    max_exploration=40,
                    model_type="ppo1",
                    n_action_slots=15,
                    n_dim=1000,
                    network_layers=[512,512,512],
                    optim_batchsize=64,
                    optim_epochs=4,
                    optim_stepsize=0.0001,
                    outdir="results/experiment_lcl_implicational_nocurr_best",
                    parallel_envs=1,
                    proof_dir="noproof",
                    quick_progress_percentage=0.9,
                    saved_model=None,
                    scheduler_starting_step=1,
                    scheduler_type="local",
                    steps_per_curriculum=20000,
                    supervised_reward=0,
                    terminate_on_illegal=False,
                    train_timesteps=[500000],
                    train_dirs=["theorems/LCL_implicational_lem"],
                    use_previous_state=True,
                    use_previous_action=True,
                    use_action_shuffle=False,
                    use_mcts=False,
                    use_remove=False,
                    use_replay=False,
                    use_shortest_proof=True,
                    value_gets_actions=False,
                    neptune=False,
                    tags=["lcl", "noproof"])


params_grid = dict()


def spec():
  return simple_handle_experiment(experiment_name = 'lcl',
                                  project_name = "deepmath/curriculum-tp",
                                  script='train_ppo.py',
                                  python_path='.:deps/awarelib',
                                  paths_to_dump = '',
                                  exclude = [".git", ".gitignore", ".gitmodules", "log"],
                                  project_tag = "test",
                                  base_config=base_config,
                                  params_grid=params_grid,
                                  _script_name=globals()["script"])
