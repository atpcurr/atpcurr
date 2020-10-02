from pyswip import Prolog
import numpy as np
import time

prolog = Prolog()

class Backend(object):
    def __init__(self, n_dim, indexer=None, backtrack=False, verbose=True, print_proof=True):
        self.prover = prolog.consult("leancop_embed.pl")
        self.indexer = indexer
        self.settings = ["conj","nodef", "n_dim({})".format(n_dim)]
        self.verbose = verbose
        if verbose:
            self.settings.append('verbose')
        if print_proof:
            self.settings.append('print_proof')
        if backtrack:
            self.settings.append('backtrack')

        self.step_time = 0.0
        self.step_count = 0
        
    def start(self, file, pathLim=0):
        self.file = file
        settings = ','.join(self.settings)
        if pathLim > 0:
            settings += ',comp({})'.format(pathLim)


        query = "init_embed(\"{}\",[{}],[EmbStateP, EmbStateV, EmbActions],Result).".format(self.file, settings)
        if self.verbose:
            print("Prolog query:\n",query)
        result = list(prolog.query(query))
        result = result[0]
        return self.process(result)
    def restart(self, pathLim=0):
        return self.start(self.file, pathLim)
    def step(self, action_index):
        self.step_count +=1
        t0 = time.time()
        # print("STEP: ", action_index)
        query = "step_embed({},[EmbStateP, EmbStateV, EmbActions], Result).".format(action_index)
        if self.verbose:
            print("Prolog query:\n",query)
        result = list(prolog.query(query))
        result = result[0]
        result2 = self.process(result)
        self.step_time += (time.time() - t0)
        return result2
    def step_fast(self, action_index):
        self.step_count +=1
        t0 = time.time()
        query = "step({}, State), state_status(State, AC, Result).".format(action_index)
        if self.verbose:
            print("Prolog query:\n",query)
        result = list(prolog.query(query))
        result = result[0]
        done = result['Result']
        action_count = result['AC']
        if self.verbose:
            print("action count: ", action_count)
        self.step_time += (time.time() - t0)
        return (done, action_count)
        
    def print_state(self):
        pass # TODO

    def process(self, result):
        action_list = result['EmbActions']
        done = result['Result']

        embedded_action_list = [self.indexer.store_action(action, pairs=True)[1] for action in action_list]
            
        embState = result["EmbStateP"]
        state = self.indexer.store_state(embState, pairs=True)

        if self.verbose:
            print("action count: ", len(action_list))
        return state, embedded_action_list, done
