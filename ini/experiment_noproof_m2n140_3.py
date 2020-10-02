import sys, os
from neptune_utils import simple_handle_experiment
from munch import Munch

base_config = Munch(actions_added=False,
                    actorbatch=512,
                    add_rnd_steps_to_remain=0,
                    can_replace_proof=True,
                    curriculum_allowed=False,
                    curriculum_decay=0.8,
                    entcoeff=0.1,
                    evaldirs=["theorems/m2n140/"],
                    evalprobcount=1,
                    evaltime=1,
                    evaltype="det",
                    failure_reward=0,
                    fast_features=True,
                    feature_file=None,
                    gamma=0.99,
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
                    n_action_slots=100,
                    n_dim=200,
                    network_layers=[512,512,512],
                    optim_batchsize=64,
                    optim_epochs=4,
                    optim_stepsize=0.0001,
                    outdir="results/noproof_m2n140_3",
                    parallel_envs=30,
                    proof_dir="noproof",
                    quick_progress_percentage=0.9,
                    saved_model=None,
                    scheduler_starting_step=1,
                    scheduler_type="local",
                    steps_per_curriculum=2000,
                    supervised_reward=0,
                    terminate_on_illegal=False,
                    train_timesteps=[140000],
                    train_dirs=["theorems/m2n140"],
                    use_action_shuffle=False,
                    use_previous_action=False,
                    use_mcts=True,
                    use_replay=False,
                    value_gets_actions=False,
                    neptune=False,
                    tags=["m2n140", "noproof"])


params_grid = dict()


def spec():
  return simple_handle_experiment(experiment_name = 'noproof_m2n140_3',
                                  project_name = "deepmath/curriculum-tp",
                                  script='train_ppo.py',
                                  python_path='.:deps/awarelib',
                                  paths_to_dump = '',
                                  exclude = [".git", ".gitignore", ".gitmodules", "log"],
                                  project_tag = "test",
                                  base_config=base_config,
                                  params_grid=params_grid,
                                _script_name=globals()["script"])
