import sys, os
from neptune_utils import simple_handle_experiment
from munch import Munch

base_config = Munch(actions_added=False,
                    actorbatch=512,
                    add_rnd_steps_to_remain=0,
                    can_replace_proof=False,
                    curriculum_allowed=True,
                    curriculum_decay=0.9,
                    entcoeff=0.01,
                    evaldirs=["theorems/robinson/simple/final"],
                    evalprobcount=1,
                    evaltime=1,
                    evaltype="det",
                    failure_reward=0,
                    fast_features=True,
                    feature_file=None,
                    gamma=0.99,
                    graph_embedding=True,
                    graph_embedding_size=40,
                    graph_hidden_layers=[100],
                    graph_node_count=40,
                    graph_update_iteration=3,
                    illegal_reward=0,
                    known_proof_max_exploration=0,
                    latent_dim=None,
                    lr_schedule="constant",
                    max_exploration=60,
                    n_action_slots=22,
                    n_dim=100,
                    network_layers=[512,512],
                    optim_batchsize=64,
                    optim_epochs=4,
                    optim_stepsize=0.00001,
                    outdir="results/experiment1",
                    proof_dir="theorems/proofs/fcoplib_20181109",
                    quick_progress_percentage=0.9,
                    saved_model=None,
                    scheduler_starting_step=1,
                    scheduler_type="global",
                    steps_per_curriculum=100000,
                    supervised_reward=0,
                    terminate_on_illegal=False,
                    train_timesteps=[50000],
                    train_dirs=["theorems/robinson/robinson_1m1__1"],
                    use_previous_action=False,
                    value_gets_actions=False,
                    neptune=False,
                    tags=["experiment1"])


params_grid = dict()


def spec():
  return simple_handle_experiment(experiment_name = 'experiment1',
                                  project_name = "deepmath/curriculum-tp",
                                  script='train_ppo.py',
                                  python_path='.:deps/awarelib',
                                  paths_to_dump = '',
                                  exclude = [".git", ".gitignore", ".gitmodules", "log"],
                                  project_tag = "test",
                                  base_config=base_config,
                                  params_grid=params_grid,
                                  _script_name=globals()["script"])
