import argparse
import os
import socket
from munch import Munch
from path import Path
import pathlib
from collections import Mapping, OrderedDict
from itertools import product
import copy



def _ensure_compund_type(input):
  if type(input) is not str:
    return input

  try:
    input = eval(input, {})
    if type(input) is tuple or type(input) is list:
      return input
    else:
      return input
  except:
    return input

def get_configuration():
    # local run
    parser = argparse.ArgumentParser(description='Debug run.')
    parser.add_argument('--ex', type=str)
    commandline_args = parser.parse_args()
    if commandline_args.ex != None:
        script = commandline_args.ex
        vars = {'script': str(Path(commandline_args.ex).name)}
        exec(open(commandline_args.ex).read(), vars)
        spec_func = vars['spec']
        # take first experiment (params configuration)
        params = spec_func()
    else:
        assert False, "Required argument: --ex"
        
    return Munch(params)


def simple_handle_experiment(experiment_name, base_config,
                                project_name, params_grid,
                                script, python_path,
                                paths_to_dump, exclude, project_tag, update_lambda=lambda d1, d2: d1.update(d2),
                                _script_name=None):

    return base_config


