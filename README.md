# Towards Finding Longer Proofs


We present a reinforcement learning (RL) based guidance system for
automated theorem proving geared towards Finding Longer Proofs
(FLoP). FLoP is a step towards learning to reason by analogy,
reducing the dependence on large scale search in automated theorem
provers. We use several simple, structured datasets with very long
proofs to show that FLoP can successfully generalise a single
training proof to a large class of related problems, implementing a
simple form of analogical reasoning. On these benchmarks, FLoP is
competitive with strong theorem provers despite using very limited
search.


The dataset and the training algorithm are described in details in the
paper. Supplementary materials including screencasts with gameplays performed
in our environments are available at the project webpage
http://bit.ly/site_atpcurr

**Datasets**

We use run experiments using simple theorems based on Robinson Arithmetic, with different levels of complexity. Problems can be found at:

- [RA-1: theorems/robinson/simple/final](theorems/robinson/simple/final)
- [RA-2: theorems/robinson/left_random/final](theorems/robinson/left_random/final)
- [RA-3: theorems/robinson/random/final2](theorems/robinson/random/final2)
- [RA-binary-1: theorems/robinson_binary/simple/final](theorems/robinson/simple/final)
- [RA-binary-2: theorems/robinson_binary/left_random/final](theorems/robinson_binary/left_random/final)
- [RA-binary-3: theorems/robinson_binary/random/final2](theorems/robinson_binary/random/final2)

We also use two datasets from the LCL Domain of the TPTP library:

- [LCL-Eq: theorems/LCL_equivalential_lem](theorems/LCL_equivalential_lem)
- [LCL-Imp: theorems/LCL_implicational_lem](theorems/LCL_implicational_lem)


**Data generation**

The arithmetic theorems are synthetically generated and can be easily adjusted wit the provided generator, e.g.:

```
python generators/gen_random.py --preamble_file generators/peano_fof.p
--count 300 --type pairs --first_limit 10 --op_count 3 --ops
"plus|10,mul|10" --output_dir /theorems/robinson/random/final2
```

This code generates problems in Robinson Arithmetic such that the
conjecture is a ground arithmetic equation with 3 operators on both
sides (using only addition and multiplication), with operators up to 10.


**Experiments**

Experiment parameters are described in configuration files. Examples can
be found in directory [ini](ini).

**Usage**

Running the code is as simple as this:

```
python train_ppo.py --ex {configuration file}
```

e.x.:

```
python train_ppo.py --ex ini/experiment_robinson__simple.py
```

An experiment consists of training a model on the dataset specified by
the configuration file and then running evaluation on the evaluation
on the test set.

**Different theorem provers as backends**
FLoP guides the leanCoP connection tableau calculus, which has a Prolog and an OCaml implementation.

**Included software**

This distribution consists of:

- All the datasets
- An arithmetic data generator
- Configuration files used in the final experiments
- The complete guidance system built using the Proximal Policy Optimization (PPO) implementation of Stable Baselines https://github.com/hill-a/stable-baselines/tree/master/stable_baselines.
- The Prolog prover engine

Two components of the software are excluded:

- Binary with the OCaml engine: The binary cannot be publicly released at this time and is distributed on request
- The experiment runner: The runner is directly linked to our hardware infrastructure and would be useless elsewhere 

**Bug**
In order to use the Prolog prover engine, you need to use the hashable module:
https://github.com/gergo-/hashtbl which is included as a submodule. This submodule has a bug, which can be fixed as follows :

1. open hashtbl/prolog/nb_hashtbl.pl
2. After line 185:
   member(Key-Values, Bucket),
   Add this line:
   ground(Key),

