import numpy as np

FCOP_VAR_LIMIT = 262139
FCOP_MODULO = 262141
OR_NODE_TYPE = 300000
PAD_TYPE = 300001
VAR_NODE_TYPE = 300002
TRUCATE_TYPE = 300003

def leading_zeros(clause):
    if len(clause) == 0:
        return 0
    elif clause[0] == 0:
        return 1 + leading_zeros(clause[1:])
    else:
        return 0

            
# todo add negation handling
def count_nodes(clause):
    if len(clause) == 0:
        return 0
    zeros = leading_zeros(clause)
    return 1 + count_nodes(clause[zeros+1:])



# Contrapositives (axioms) are lists of literals. We create a single tree from them by adding a special "or" node
def count_literals(clause):
    literals = 0
    remaining = clause
    args_needed = 0
    while len(remaining) > 0:
        assert args_needed >= 0
        zeros = leading_zeros(remaining)
        if args_needed == 0:
            literals += 1
            args_needed = zeros
        else:
            args_needed += zeros - 1
        remaining = remaining[zeros+1:]
    return literals

def add_or_node(clause):
    literals = count_literals(clause)
    if literals > 1:
        clause = [0 for _ in range(literals)] + [OR_NODE_TYPE] + list(clause)
    return clause

# We fix an enumeration of all the nodes in the formula and maintain a list Types, which stores the symbols of the nodes. I.e., Types[i]="and" means that the ith node is an and operator (a conjunction).
# Build a tree from the formula
# We have N nodes and each node has an unique identifier from 0, N-1

        

# Build Type list
def collect_types(clause, size=None):
    if len(clause) == 0:
        Types = []
    else:
        zeros = leading_zeros(clause)
        topType = clause[zeros]
        remaining = clause[zeros+1:]
        Types = [topType] + collect_types(remaining, None)
    if size is None:
        return Types
    else:
        # assert len(Types) <= size, "Len {}, clipping clause {}".format(len(Types), clause)
        Types = Types[:size]
        padding = [PAD_TYPE] * (size - len(Types))
        Types = Types + padding
        return Types
        

# All variables are collapsed into a single symbol VAR.
# However, we maintain a separate VarConn connection matrix, such that VarConn[i,j] means that node i (a variable) and node j (another variable) are identical
# Variable identities are only kept within goals (literals) and axioms (clauses), not across different goals
# FUTURE WORK: maintain variable identities across different goals

# variables are renamed based on an inorder traversal of the parse tree. Ex f(X,Z,g(X,Y)) is replaced with f(X,Y,g(X,Z))
def normalize_vars(clause):
    clause = list(clause)
    var_list=[]
    for i, c in enumerate(clause):
        if c > FCOP_VAR_LIMIT and c not in (OR_NODE_TYPE, PAD_TYPE, VAR_NODE_TYPE):
            if c not in var_list:
                var_list.append(c)
            clause[i] = FCOP_VAR_LIMIT + 1 + var_list.index(c)
    return clause

def get_token(clause):
    assert len(clause) > 0, "Cannot parse token from empty clause!"
    zeros = leading_zeros(clause)
    token = clause[:zeros+1]
    remaining = clause[zeros+1:]
    for _ in range(zeros):
        arg, remaining = get_token(remaining)
        token = np.concatenate([token, arg])
    return token, remaining

def truncate_clause_to_depth(clause, depth):
    assert depth > 0
    
    if len(clause) == 0:
        return clause, 0

    zeros = leading_zeros(clause)
    remaining = clause[zeros+1:]
    if depth == 1:
        return [clause[zeros]], 1

    result_list = [clause[:zeros+1]]
    size = 1
    for _ in range(zeros):
        arg, remaining = get_token(remaining)
        truncated_arg, truncated_size = truncate_clause_to_depth(arg, depth-1)
        result_list.append(truncated_arg)
        size += truncated_size
    result = np.concatenate(result_list)
    return result, size

def truncate_clause(clause, size):
    assert size > 0
    
    prev_size = 0
    prev_clause = []
    depth = 0
    while True:
        depth += 1
        curr_clause, curr_size = truncate_clause_to_depth(clause, depth)
        if (curr_size == prev_size) or (curr_size > size):
            return prev_clause
        else:
            prev_size = curr_size
            prev_clause = curr_clause
    

def collect_vars(clause, nodeid):
    if len(clause) == 0:
        return []
    zeros = leading_zeros(clause)
    if zeros == 0 and clause[0] > FCOP_VAR_LIMIT: # this is a variable
        variables = [(nodeid, clause[0])]
    else:
        variables = []
    remaining = clause[zeros+1:]
    return variables + collect_vars(remaining, nodeid+1)

def build_varconn(clause, size=None):
    variables = collect_vars(clause, 0)
    if size is None:
        N = count_nodes(clause)
    else:
        N = size
    VarConn = np.zeros((N,N))
    for i in range(N):
        VarConn[i,i] = 1 # this makes everybody connected with itself
    for i, (id1, var1) in enumerate(variables):
        if id1 < N:
            for (id2, var2) in variables[i+1:]:
                if (id2 < N) and  (var1 == var2):
                    VarConn[id1,id2] = 1
                    VarConn[id2,id1] = 1
    return VarConn
    
    
def collapse_vars(clause):
    clause = list(clause)
    for i, c in enumerate(clause):
        if c > FCOP_VAR_LIMIT:
            clause[i] = FCOP_VAR_LIMIT+1
    
    return clause

def add_var_nodes(clause):
    result = []
    for c in clause:
        if c > FCOP_VAR_LIMIT and not c in (OR_NODE_TYPE, VAR_NODE_TYPE, PAD_TYPE):
            result += [0, VAR_NODE_TYPE]
        result.append(c)
    
    return result
    

# Each symbol s is associated with a fixed random vector embed_symbol(s, embedding_size). So the initial embedding of the ith node is embed_symbol(Types(i), embedding_size).
def embed_symbol(symbol, embedding_size):
    if symbol == PAD_TYPE:
        return np.zeros((embedding_size))
    st0 = np.random.get_state()
    np.random.seed(symbol)
    embedding = np.random.uniform(size = embedding_size)
    np.random.set_state(st0)
    return embedding


# def init_symbol(symbol_id, EMBEDDING_SIZE):
#     with tf.variable_scope("graph_net", reuse=tf.AUTO_REUSE):
#         initial_embedding = tf.get_variable(
#             name='init_embedding_{}'.format(symbol_id),
#             shape=[EMBEDDING_SIZE],
#             initializer=tf.random_uniform_initializer(-1., 1))
#     return initial_embedding

            

# There is a connection matrix Conn that describes the graph structure: Conn(i,j)=n means that node j is the nth child of node i.
# Conn[i] gives us the list of nodes that are children of i
# Conn[:,i] gives us the list of nodes that are parents of i. This should be a onehot vector

def collect_children(clause, nodeid):
    if len(clause) == 0:
        return [], nodeid, []
    children = []
    zeros = leading_zeros(clause)
    if zeros == 0:
        return children, nodeid+1, clause[1:]

    current_nodeid = nodeid+1
    current_clause = clause[zeros+1:]
    for i in range(zeros):
        children.append((nodeid, i+1, current_nodeid))
        children_of_children, current_nodeid, current_clause = collect_children(current_clause, current_nodeid)
        children += children_of_children
    return children, current_nodeid, current_clause
    

def build_connections(clause, size=None):
    children, Nfirst, _ = collect_children(clause, 0)
    real_size = count_nodes(clause)
    assert real_size == Nfirst, "Make sure your clause is a single graph ({},{},{},{})".format(real_size, Nfirst, children, clause)

    if size is None:
        N = real_size
    else:
        N = size
    
    Conn = np.zeros((N,N))
    for (id, nth, child_id) in children:
        if (id < N) and (child_id < N):
            Conn[id,child_id] = 1/nth # TODO
    
    return Conn

def clause2embedding(clause, embedding_size, size=None, collapse=True, add_var=False):
    if collapse:
        clause = collapse_vars(clause)
    if add_var:
        clause = add_var_nodes(clause)
    if size is not None:
        clause = truncate_clause(clause, size)
    VarConn = build_varconn(clause, size)
    Conn = build_connections(clause, size)
    Types = collect_types(clause, size)
    embeddings = [embed_symbol(T, embedding_size) for T in Types]
    return [embeddings, Conn, VarConn]

    

# TODO cache Types and Cache for axioms (clauses) and goals (literals)

def main():
    from backend_ocaml import Backend
    import util

    N_DIM = 100
    FEATURE_FILE=None
    FAST_FEATURES=False
    USE_PREVIOUS_ACTION=False
    USE_PREVIOUS_STATE=False
    FILE = "a.p" #"theorems/robinson/simple/final/robinson_1m1__1.p"

    indexer = util.Indexer(N_DIM, N_DIM, feature_file=FEATURE_FILE)
    backend = Backend(indexer, verbose=False, fast_features=FAST_FEATURES, use_previous_action=USE_PREVIOUS_ACTION, use_previous_state=USE_PREVIOUS_STATE)
    backend.start(FILE)
    # state, state_id, embedded_action_list, embedded_action_ids, done = backend.start(FILE)
    # action_count = len(embedded_action_list)
    done, action_count = backend.step_fast(0)
    
    state = backend.get_holstep_state()
    goal= state[0]
    action = backend.get_holstep_action(0)
    action = add_or_node(action)

    print("action:", action),
    print("var_node_added:", add_var_nodes(action))

    for i in range(1,10):
        print(i, " truncated action ", truncate_clause(action, i))

    print("state embedding: \n", clause2embedding(goal, 5))
    print("action embedding: \n", clause2embedding(action, 5))
    print("\n\n\n")
          
    print("State: {}, count {}".format(state, count_nodes(goal)))
    print("State types: {}".format(collect_types(goal)))
    print("State vars: {}".format(collect_vars(goal, 0)))
    VarConn = build_varconn(goal, 5)
    goal = collapse_vars(goal)

    print("Vars collapsed: {}".format(goal))
    print("VarConn: ")
    print(VarConn)

    ConnGoal = build_connections(goal)
    ConnAction = build_connections(action)

    print("ConnG\n", ConnGoal)
    print("ConnA\n", ConnAction)


    print("\n\n")
    backend.print_state()
    for a in range(action_count):
        action = backend.get_holstep_action(a)
        print("Action {}: {}, count {}, literals {}".format(a, add_or_node(action), count_nodes(action), count_literals(action)))
        backend.print_action(a)


if __name__ == '__main__':
    main()
