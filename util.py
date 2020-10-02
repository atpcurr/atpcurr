import numpy as np
from sklearn.feature_selection import VarianceThreshold
import hashlib
import json
import os
import math
import time


FEATURES_MODULO = 262139 # this is given in features.ml line 32

# return a vector of length dim with prefix from datalist
# if dim > len(datalist) then zero pad
def get_fixed_dim(dim, datalist):
    result = np.zeros((dim,))
    maxindex = min(len(datalist), dim)
    result[:maxindex] = datalist[:maxindex]
    return result

def json_readr(file):
    for line in open(file, mode="r"):
        yield json.loads(line)



# input is a vector, returns softmax probabilities
def softmax(x):
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()


# turn index into a onehot vector of length classes
def get_onehot(index, classes):
    index = index % classes
    return np.eye(classes)[index]
def get_onehot_list(index_list, classes, pairs):
    result = np.zeros(classes)
    if pairs:
        for (k,v) in index_list:
            result[k % classes] += v
    else:
        for i in index_list:
            result[i % classes] += 1
    return result

def get_state_embedding(goal, path, lem, moregoals, S_DIM, pairs=False):    
    state_list = []
    if goal is not None:
        state_list.append(get_onehot_list(goal, S_DIM, pairs))
    if path is not None:
        state_list.append(get_onehot_list(path, S_DIM, pairs))
    if lem is not None:
        state_list.append(get_onehot_list(lem, S_DIM, pairs))
    if moregoals is not None:
        state_list.append(get_onehot_list(moregoals, S_DIM, pairs))
    state = np.array(state_list)
    return state

def get_action_embedding(action, A_DIM, pairs=False):
    return get_onehot_list(action, A_DIM, pairs)
def get_actions_embedding(action_list, A_DIM, pairs=False):
    result_list = [get_onehot_list(action, A_DIM, pairs) for action in action_list]
    return result_list

def densify_features(vector):
    features_np = np.zeros(len(FEATURE_MAP))
    features_np[[FEATURE_MAP[key] for key in vector]] = 1
    return features_np

def sparseToDense(vector, len=None):
    if len == None:
        len = max(vector) + 1
    result = np.zeros(len)
    for elem in vector:
        index = elem % len
        result[index] = result[index]+1
    return result

def map_and_densify(vector, feature_list):
    feature_list = feature_list.tolist()
    mapped_vector = [feature_list.index(v) for v in vector]
    return sparseToDense(mapped_vector, len(feature_list))


# keep track of different states and actions and enumerate them
class Indexer(object):
    def __init__(self, S_DIM, A_DIM, feature_file=None):
        self.S_DIM = S_DIM
        self.A_DIM = A_DIM
        self.state_list = []
        self.goal_list = []
        self.path_list = []
        self.lem_list = []
        self.moregoals_list = []
        self.action_list = []
        self.embedded_action_list = []
        self.children_list = []

        if feature_file is None:
            self.feature_list = None
        else:
            self.feature_list = np.load(feature_file)
            self.S_DIM = len(self.feature_list)
            self.A_DIM = len(self.feature_list)
            
    # pairs=True: items are lists (key,value) pairs
    # pairs=False: items are list of key
    def store_state(self, goal, path=None, lem=None, moregoals=None, pairs=False):
        for i in range(len(self.goal_list)):
            if np.array_equal(goal, self.goal_list[i]) and np.array_equal(path, self.path_list[i]) and np.array_equal(lem, self.lem_list[i]) and np.array_equal(moregoals, self.moregoals_list[i]):
                return self.state_list[i] # the given state has already been stored
        self.goal_list.append(goal)
        self.path_list.append(path)
        self.lem_list.append(lem)
        self.moregoals_list.append(moregoals)
        if self.feature_list is None:
            state = get_state_embedding(goal, path, lem, moregoals, self.S_DIM, pairs)
        else:
            assert False, "NYI fix fast features option"
            goal_emb = map_and_densify(goal, self.feature_list)
            path_emb = map_and_densify(path, self.feature_list)
            lem_emb = map_and_densify(lem, self.feature_list)
            moregoals_emb = map_and_densify(moregoals, self.feature_list)
            state = np.array((goal_emb, path_emb, lem_emb, moregoals_emb))
        self.state_list.append(state)
        self.children_list.append([])
        return state        

    
    # pairs=True: items are lists (key,value) pairs
    # pairs=False: items are list of key
    def store_action(self, action, pairs=False):
        action = np.array(action)
        l = len(self.action_list)
        for i in range(l):
            if np.array_equal(action, self.action_list[i]):
                return i, self.embedded_action_list[i] # the given action has already been stored
        self.action_list.append(action)
        if self.feature_list is None:
            embedded_action = get_action_embedding(action, self.A_DIM, pairs)
        else:
            embedded_action = map_and_densify(action, self.feature_list)
        self.embedded_action_list.append(embedded_action)
        return l, embedded_action
    def get_state(self, index):
        assert index < len(self.state_list)
        return self.state_list[index]
    def get_embedded_action(self, index):
        assert index < len(self.action_list)
        return self.embedded_action_list[index]
    def get_state_count(self):
        return len(self.state_list)
    def get_action_count(self):
        return len(self.action_list)
    def add_child(self, state_id, action_id, new_state_id):
        assert len(self.children_list) > state_id
        item = [action_id, new_state_id]
        if not item in self.children_list[state_id]:
            self.children_list[state_id].append(item)
    def get_children(self, state_id):
        return self.children_list[state_id]
    def display_children(self):
        print("Explored search space:")
        for i in range(len(self.children_list)):
            print("State: {}, children: {}".format(i,self.children_list[i]))
    def get_dense_actions(self, variance_threshold=None):
        result = np.array([sparseToDense(a, FEATURES_MODULO) for a in self.action_list])
        mask = np.ones(FEATURES_MODULO)
        if variance_threshold != None:
            sel = VarianceThreshold(threshold=variance_threshold)
            result = sel.fit_transform(result)
            mask = sel.get_support()
        return result, mask
            
def display_progress(indexer, ppo):
    # get values learned by the critic
    all_states = [indexer.get_state(i) for i in range(indexer.get_state_count())]
    all_states = np.array(all_states)
    all_values = ppo.get_v(all_states)
    
    # get probs learned by the actor
    # actions = [indexer.get_embedded_action(i) for i in range(indexer.get_action_count())]
    for i, s in enumerate(all_states):
        print("state: {}, value: {}".format(i, all_values[i]))
        children = indexer.get_children(i)
        if len(children) > 0:
            action_ids = [c[0] for c in children]
            next_state_ids = [c[1] for c in children]
            actions = [indexer.get_embedded_action(id) for id in action_ids]
            probs = ppo.get_action_probs(s, actions)
            probs_normed = softmax(probs)
            for p,ns in zip(probs_normed, next_state_ids):
                print("  ---> {} ---> state {}".format(p, ns))

class ClausePrinter(object):
    def __init__(self):
        self.pred_list = []
        self.var_limit = 262139
        self.modulo = 262141

        self.holstep_map = {
            159725: "#",
            159723: "#",
            257246: "eq",
            257248: "eq",
            259374: "div",
            142875: "s",
            110914: "o",
            133115: "neg",
            41205: "plus",
            7683: "mul",
        }


    def collapse_vars(self, clause):
        results = []
        for c in clause:
            if c > self.var_limit:
                results.append(self.var_limit+1)
            else:
                results.append(c)
        return results



    def get_pred_name(self, pred):
        if pred in self.holstep_map:
            return self.holstep_map[pred]
        neg_pred = (self.modulo - pred)
        if neg_pred in self.holstep_map:
            return "-" + self.holstep_map[neg_pred]
        
        if neg_pred in self.pred_list: # its negation is already stored
            i = self.pred_list.index(neg_pred)
            return "-g_" + chr(i + ord("A"))
            
        if not pred in self.pred_list:
            self.pred_list = self.pred_list + [pred]
        i = self.pred_list.index(pred)
        return "g_" + chr(i + ord("a"))

    def leading_zeros(self, clause):
        if len(clause) == 0:
            return 0
        elif clause[0] == 0:
            return 1 + self.leading_zeros(clause[1:])
        else:
            return 0
   
    def get_token(self, clause):
        assert len(clause) > 0

        zeros = self.leading_zeros(clause)

        if zeros > 0:
            pred = self.get_pred_name(clause[zeros])
            remaining = clause[zeros+1:]
            used = clause[:zeros+1]
            args = []
            for _ in range(zeros):
                arg, arg_clause, remaining = self.get_token(remaining)
                args.append(arg)
                used += arg_clause
            
            token = "{}({})".format(pred, ','.join(args))
            return token, used, remaining

        # if clause[0] == 0: # application
        #     assert len(clause) >= 3
        #     if clause[1] == 0: # two arguments
        #         assert len(clause) >= 5
        #         pred = self.get_pred_name(clause[2])
        #         arg1, arg1_clause, rest1 = self.get_token(clause[3:])
        #         arg2, arg2_clause,  rest2 = self.get_token(rest1)
        #         token = "{}({},{})".format(pred, arg1, arg2)
        #         return token, clause[:3] + arg1_clause + arg2_clause, rest2
        #     else:
        #         pred = self.get_pred_name(clause[1])
        #         arg, arg_clause, rest = self.get_token(clause[2:])
        #         token = "{}({})".format(pred, arg)
        #         return token, clause[:2] + arg_clause, rest
        elif clause[0] > self.var_limit: # variable
            token = "X{}".format(clause[0] - self.var_limit)
            return token, [clause[0]], clause[1:]
        else: # atom
            token = self.get_pred_name(clause[0]).lower()
            return token, [clause[0]], clause[1:]

    def stringify(self, clause):
        literals = []
        while len(clause) > 0:
            token, _, clause = self.get_token(clause)
            literals.append(token)
        return "|".join(literals)

    def eq_or_negeq(self, pred):
        if pred in self.holstep_map and self.holstep_map[pred] == "eq":
            return True
        neg_pred = (self.modulo - pred)
        if neg_pred in self.holstep_map and self.holstep_map[neg_pred] == "eq":
            return True
        return False

    def count_symbols(self, clause, symbols):
        counter = 0
        for c in clause:
            if c in self.holstep_map and self.holstep_map[c] in symbols:
                counter += 1
        return counter
            
    def get_leftright_symbols(self, literal, symbols):
        # If this is not an equality predicate, return (0,0)
        if len(literal) < 5 or literal[0] != 0 or literal[1] != 0:
            return (0, 0)

        pred = literal[2]
        if not self.eq_or_negeq(pred):
            return (0, 0)

        _arg1, arg1_clause, rest1 = self.get_token(literal[3:])
        _arg2, arg2_clause,  _rest2 = self.get_token(rest1)

        left_count = self.count_symbols(arg1_clause, symbols)
        right_count = self.count_symbols(arg2_clause, symbols)
        return left_count, right_count
        

    
class AttrDict(dict):
    def __init__(self, *args, **kwargs):
        super(AttrDict, self).__init__(*args, **kwargs)
        self.__dict__ = self

def print_proofs(children_list):
    parents = AttrDict()
    for i in range(len(children_list)):
        for (action, successor) in children_list[i]:
            if not successor in parents:
                parents[successor] = []
            parents[successor].append((i, action))

    # proofs = get_proofs('success', parents)
    proofs = get_proofs(parents)
    for proof in proofs:
        print("Proof: ", proof)

# def get_proofs(state, parents):
#     prev_states = parents[state]

#     proofs = []
#     for (state2, action2) in prev_states:
#         if state2 == 0:
#             proofs.append([])
#         else:
#             proofs += get_proofs(state2,parents)
#         for p in proofs:
#             p.append((state2, action2))
#     return proofs

def get_proofs(parents):
    partial_proofs = [[('success', -1)]]
    proofs = []    
    while (len(partial_proofs) > 0):
        suffix = partial_proofs.pop()
        (last_state, _last_action) = suffix[-1]
        prev_states = parents[last_state]
        for (state2, action2) in prev_states:
            new_suffix = suffix + [(state2, action2)]
            if state2 == 0:
                proof = list(reversed(new_suffix))
                proofs.append(proof)
            else:
                partial_proofs.append(new_suffix)
    return proofs

def format_time(sec):
    if sec < 60:
        return "{:.3f} sec".format(sec)

    minute = int(sec // 60)
    sec = sec % 60
    if minute < 60:
        return "{} min {:.3f} sec".format(minute, sec)
    
    hour = int(minute // 60)
    minute = minute % 60
    return "{} hour {} min {:.3f} sec".format(hour, minute, sec)

def print_problemdict(problemdict, env=0):
    print("Proofs found for the following problems:")
    counter = 0
    length_counter = 0
    missing_counter = 0
    learned_counter = 0
    for file in problemdict:
        dict = problemdict[file]
        if len(dict["proofs"]) > 0:
            counter += 1
            print("ENV {}, {}, forwarded steps {}, success ratio {}".format(env, file, dict["forwarded_steps"], dict["success_ratio"]))
            if dict["success_ratio"] > 0.5:
                learned_counter += 1
            for p in dict["proofs"]:
                print("     ", p)
                length_counter += len(p)
        else:
            missing_counter += 1
    total = counter + missing_counter
    print("SUMMARY: ENV {}, found {}, learned {}, sum_length {}, total {}".format(env, counter, learned_counter, length_counter, total))

def list_problems(problem_source):
    if type(problem_source) in (list, tuple):
        return list(problem_source)
    elif os.path.isfile(problem_source):
        if problem_source.endswith(".p"):
            return [problem_source]
        else:
            return []
    elif os.path.isdir(problem_source):
        filenames = os.listdir(problem_source)        
        # filenames = list(filter(lambda x: x.endswith(".p"), filenames))
        fullnames = []
        for filename in filenames:
            fullname = os.path.join(problem_source, filename)
            # fullnames.append(fullname)
            names = list_problems(fullname)
            fullnames.extend(names)
        return fullnames
    else:
        assert False, problem_source

def split_list(mylist, n, extensible=True):
    size = math.ceil(len(mylist) * 1.0 / n)
    if extensible:
        while len(mylist) < size * n:
            mylist += mylist
    return [mylist[i*size:(i*size+size)] for i in range(n)]

def parse_tptp(problem_source):
    import backend_ocaml
    
    files = list_problems(problem_source)
    files = sorted(files)
    for i, file in enumerate(files):
        # if i < 870:
        #     continue
        T0 = time.time()
        print(i, file)
        backend_ocaml.cop_start(file.encode('UTF-8'))
        T = time.time() - T0
        if T > 2:
            print("   TIMEOUT", T)
            print('"{}",'.format(file))
            # os.remove(file)


def get_state_dim(args):
    if args.backend == "prolog":
        state_dim = 1
    elif args.fast_features:
        state_dim = 1
    else:
        state_dim = 4
        
    if args.use_previous_state:
        state_dim *= 2
    if args.use_previous_action:
        state_dim += 1
    return state_dim

def safediv(x, y):
    if y == 0:
        return 0.0
    else:
        return x * 1.0 / y
