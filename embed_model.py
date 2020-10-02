import numpy as np
import tensorflow as tf
import sys

import embed
import util
from util import AttrDict


# There are 4 update networks operating on any node N with children C_i and parent P:
# --- update_self: operates on N, i.e. calculates update_self(N)
# --- update_child: operates on each children, receives argument position, i.e., calculates update_child(C_i, i) # TODO
# --- update_parent: operates on the parent, i.e., calculates update_parent(P)
# --- update_all: creates a new node embedding from the outputs of the above

# Update variable embeddings based on VarConn
# for variable i VarConn[i] gives the nodes with which it is equal
# We average the embeddings of the equal nodes and send it through an update network
# --- update_var: update_var(current_embedding[i], tf.reduce_mean(current_embedding[VarConn[i]], axis=1))

def basic_MLP(source, name, target_dimension, hidden_layers, hidden_activation, end_activation, residual=False):
    last_hidden = source
    for index, size in enumerate(hidden_layers):
        last_hidden = tf.layers.dense(
            last_hidden, size,
            activation=hidden_activation,
            name='{}_hidden_{}'.format(name, index),
            reuse=tf.AUTO_REUSE)
    result = tf.layers.dense(last_hidden,
                             target_dimension,
                             activation=None,
                             name='{}'.format(name),
                             # kernel_regularizer=tf.contrib.layers.l2_regularizer(wd),
                             reuse=tf.AUTO_REUSE)
    if residual:
        assert source.shape[1:] == result.shape[1:], "Dimension mismatch" + str(source.shape) + str(result.shape)
        result = result + source
    return end_activation(result)


class Graph:
    def __init__(self, args):
        self.args = args
        # self.build_predictor()


    def build_predictor(self):
        BATCH_SIZE = self.args.BATCH_SIZE

        with tf.variable_scope("predictor", reuse=tf.AUTO_REUSE):

            self.input_embeddingG = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.EMBEDDING_SIZE), name='input_embeddingG')
            self.connectionG = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.NODE_COUNT), name = "connectionG")
            # self.var_connectionG = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.NODE_COUNT), name = "var_connectionG")

            self.input_embeddingA = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.EMBEDDING_SIZE), name='input_embeddingA')
            self.connectionA = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.NODE_COUNT), name = "connectionA")
            # self.var_connectionA = tf.placeholder(tf.float32, shape=(BATCH_SIZE, self.args.NODE_COUNT, self.args.NODE_COUNT), name = "var_connectionA")
            
            self.target = tf.placeholder(tf.float32, shape=(BATCH_SIZE,), name="target")

            self.embedding_batch = self.predict_latent(self.input_embeddingG, self.connectionG, self.input_embeddingA, self.connectionA)
            
            self.prediction_logit = basic_MLP(self.embedding_batch, "prediction_logit", 1, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, tf.keras.activations.linear)
            self.prediction_logit = tf.reshape(self.prediction_logit, (-1, ))
            self.prediction = tf.sigmoid(self.prediction_logit)
            self.loss = tf.nn.sigmoid_cross_entropy_with_logits(labels=self.target, logits = self.prediction_logit)

    def add_train_op(self):
        # self.loss = tf.keras.losses.MSE(self.target, self.prediction)
        # optimizer = tf.train.RMSPropOptimizer(learning_rate=self.args.LEARNING_RATE)
        optimizer = tf.train.AdamOptimizer(learning_rate=self.args.LEARNING_RATE)
        self.train_op = optimizer.minimize(self.loss)


    def predict_latent(self, input_embeddingG, connectionG, input_embeddingA, connectionA):
        embedding_list = []
        for i in range(self.args.BATCH_SIZE):
            embeddingG = self.forward(input_embeddingG[i], connectionG[i], "goal_")[0]
            embeddingA = self.forward(input_embeddingA[i], connectionA[i], "action_")[0]

            embedding = tf.concat([embeddingG,embeddingA], axis=1)
            embedding_list.append(embedding)
        return tf.concat(embedding_list, axis=0)
        


    def forward(self, input_embedding, connection, prefix):        
        # There is a single embedding network which turns the inital random embedding into something more semantic.
        current_embedding = basic_MLP(input_embedding, prefix+"initial_embedding", self.args.EMBEDDING_SIZE, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, self.args.END_ACTIVATION, residual=self.args.RESIDUAL)

        inner_embeddings = [current_embedding]
        for i in range(self.args.UPDATE_ITERATION):
            # update_self: operates on the node itself
            update_self = basic_MLP(current_embedding, prefix+"update_self_{}".format(i), self.args.EMBEDDING_SIZE, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, self.args.END_ACTIVATION, residual=self.args.RESIDUAL)

            # update_child: operates on node children
            update_child = basic_MLP(current_embedding, prefix+"update_child_{}".format(i), self.args.EMBEDDING_SIZE, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, self.args.END_ACTIVATION, residual=self.args.RESIDUAL)
            update_neighbours = tf.matmul(connection, update_child)

            # update_parent
            update_parent = basic_MLP(current_embedding, prefix+"update_parent_{}".format(i), self.args.EMBEDDING_SIZE, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, self.args.END_ACTIVATION, residual=self.args.RESIDUAL)
            # update_parent = tf.matmul(tf.transpose(connection), update_parent)
            update_parent = tf.matmul(connection, update_parent, transpose_a=True)

            update_all = tf.concat([update_self, update_neighbours, update_parent], axis=-1)
            current_embedding = basic_MLP(update_all, prefix+"updated_embedding_{}".format(i), self.args.EMBEDDING_SIZE, self.args.HIDDEN_LAYERS, self.args.HIDDEN_ACTIVATION, self.args.END_ACTIVATION, residual=False)


            # synchronize identical variables
            # current_embedding = tf.matmul(var_connection, current_embedding) / tf.reduce_sum(var_connection, axis=1, keepdims=True)

            inner_embeddings.append(current_embedding)


        if self.args.ROOT_EMBEDDING:
            current_embedding = tf.gather(current_embedding, [0], axis=1)
        else:
            mask = tf.sign(tf.reduce_sum(connection + tf.transpose(connection, perm=[0,2,1]), axis=1))
            current_embedding = tf.matmul(mask, current_embedding)
            current_embedding = tf.reduce_mean(current_embedding, axis = 1, keepdims=False)

        return current_embedding, inner_embeddings

    

    


def read_data(datafile, args):
    # read data
    data = {}
    reader = util.json_readr(datafile)
    for item in reader:
        goal = tuple(item[1])
        action = tuple(item[5])
        
        if args.NORMALIZE_VARS:
            goal = tuple(embed.normalize_vars(goal))
            action = tuple(embed.normalize_vars(action))
        
        reward = item[0]
        if goal in data:
            if action in data[goal]:
                data[goal][action].append(reward)
            else:
                data[goal][action] = [reward]
        else:
            data[goal] = {action:[reward]}

    # count the number of times a goal lead to success
    success_dict = {}
    for goal in data:
        success = 0
        for action in data[goal]:
            success += np.sum(data[goal][action])
        success_dict[goal] = success


    # create data matrices
    emb_goal = []
    emb_action = []
    conn_goal = []
    conn_action = []
    varconn_goal = []
    varconn_action = []
    rewards = []
    goal_actions = []
    for goal in data:
        for action in data[goal]:
            if args.SAME_LABEL_COLLAPSE == "max":
                reward = np.max(data[goal][action])
            elif args.SAME_LABEL_COLLAPSE == "mean":
                reward = np.mean(data[goal][action])
            elif args.SAME_LABEL_COLLAPSE == "prob":
                if success_dict[goal] == 0:
                    reward = 0
                else:
                    reward = np.sum(data[goal][action]) / success_dict[goal]
            else:
                assert False, "Not Yet Implemented " + args.SAME_LABEL_COLLAPSE

            goal2 = list(goal)
            action2 = embed.add_or_node(list(action))

            [embeddingG, connectionG, var_connectionG] = embed.clause2embedding(goal2, args.EMBEDDING_SIZE, args.NODE_COUNT, collapse=args.COLLAPSE, add_var=args.ADD_VAR)
            [embeddingA, connectionA, var_connectionA] = embed.clause2embedding(action2, args.EMBEDDING_SIZE, args.NODE_COUNT, collapse=args.COLLAPSE, add_var=args.ADD_VAR)
            emb_goal.append(embeddingG)
            emb_action.append(embeddingA)
            conn_goal.append(connectionG)
            conn_action.append(connectionA)
            varconn_goal.append(var_connectionG)
            varconn_action.append(var_connectionA)
            rewards.append(reward)
            goal_actions.append((goal2, action2))

    emb_goal = np.array(emb_goal)
    emb_action = np.array(emb_action)
    conn_goal = np.array(conn_goal)
    conn_action = np.array(conn_action)
    varconn_goal = np.array(varconn_goal)
    varconn_action = np.array(varconn_action)
    rewards = np.array(rewards)
    goal_actions = np.array(goal_actions)

    result = AttrDict({
        "emb_goal": emb_goal,
        "emb_action": emb_action,
        "conn_goal": conn_goal,
        "conn_action": conn_action,
        "varconn_goal": varconn_goal,
        "varconn_action": varconn_action,
        "rewards": rewards,
        "goal_actions": goal_actions,
    })

    if args.FILTER is not None:
        result = filter_data(result, args.FILTER)

    return result 

def filter_data(datadict, target):
    rewards = datadict["rewards"]
    poscount = 0
    negcount = 0
    indices = []
    for i, r in enumerate(rewards):
        if i == 0:
            continue
        if r > 0 and poscount < target:
            indices.append(i)
            poscount +=1
        elif r <= 0 and negcount < target:
            indices.append(i)
            negcount +=1
    indices = np.array(indices)
    for k in datadict.keys():
        datadict[k] = datadict[k][indices]
    return datadict

def train_model(session, graph, args, datadict, saver=None, modelfile=None):

    data_size = len(datadict.emb_goal)
    iters = data_size // args.BATCH_SIZE
    truncated_size = iters * args.BATCH_SIZE

    assert args.BATCH_SIZE % 2 == 0
    rewards = datadict.rewards
    positive_indices = np.arange(len(rewards))[rewards > 0]
    negative_indices = np.arange(len(rewards))[rewards <= 0]

    for epoch in range(args.EPOCHS):
        total_loss = 0
        total_hits = 0
        
        for i in range(iters):
            pos_i = np.random.choice(positive_indices, args.BATCH_SIZE // 2)
            neg_i = np.random.choice(negative_indices, args.BATCH_SIZE // 2)
            indices = np.concatenate([pos_i, neg_i])
            
        # indices_all = np.random.permutation(data_size)
        # for i in range(data_size // args.BATCH_SIZE):
        #     indices = indices_all[args.BATCH_SIZE * i:args.BATCH_SIZE * (i+1)]

            embeddingG = datadict.emb_goal[indices]
            embeddingA = datadict.emb_action[indices]
            connectionG = datadict.conn_goal[indices]
            connectionA = datadict.conn_action[indices]
            # var_connectionG = datadict.varconn_goal[indices]
            # var_connectionA = datadict.varconn_action[indices]
            reward = datadict.rewards[indices]
            


            (_, prediction, loss) = session.run([graph.train_op, graph.prediction, graph.loss],
                                                {graph.input_embeddingG: embeddingG,
                                                 graph.connectionG: connectionG,
                                                 # graph.var_connectionG: var_connectionG,
                                                 graph.input_embeddingA: embeddingA,
                                                 graph.connectionA: connectionA,
                                                 # graph.var_connectionA: var_connectionA,
                                                 graph.target: reward
                                                })

            total_loss += np.sum(loss)
            # total_hits += np.sum((prediction >= 0.5) == reward)
            total_hits += np.sum(np.abs(prediction - reward) < 0.1)
                                
        print("Epoch: {}, loss: {}, accuracy: {}".format(epoch, total_loss / truncated_size, total_hits / truncated_size))
        if ((epoch + 1) % args.SAVE_FREQUENCY == 0) and (saver is not None) and (modelfile is not None):
            saved = saver.save(session, modelfile, global_step=epoch+1)
            print('Saved model to ' + saved)
        sys.stdout.flush()


def eval_model(session, graph, args, datadict):
    cp = util.ClausePrinter()
    data_size = len(datadict.emb_goal)
    truncated_size = (data_size // args.BATCH_SIZE) * args.BATCH_SIZE
    # truncated_size = np.minimum(truncated_size, args.BATCH_SIZE * 5)

    indices_all = np.arange(truncated_size)
    for i in range(truncated_size // args.BATCH_SIZE):
        indices = indices_all[args.BATCH_SIZE * i:args.BATCH_SIZE * (i+1)]

        embeddingG = datadict.emb_goal[indices]
        embeddingA = datadict.emb_action[indices]
        connectionG = datadict.conn_goal[indices]
        connectionA = datadict.conn_action[indices]
        # var_connectionG = datadict.varconn_goal[indices]
        # var_connectionA = datadict.varconn_action[indices]
        reward = datadict.rewards[indices]

        (prediction, ) = session.run([graph.prediction],
                                     {graph.input_embeddingG: embeddingG,
                                      graph.connectionG: connectionG,
                                      # graph.var_connectionG: var_connectionG,
                                      graph.input_embeddingA: embeddingA,
                                      graph.connectionA: connectionA,
                                      # graph.var_connectionA: var_connectionA,
                                      graph.target: reward
                                     })

        goal_action = datadict.goal_actions[indices]
        for i in range(args.BATCH_SIZE):
            print("\nGoal:", cp.stringify(goal_action[i][0]))
            print("Action:", cp.stringify(goal_action[i][1]))
            print("Target:", reward[i])
            print("Pred:  ", prediction[i])
            # print("Pred2: ", predict(session, graph, args, goal_action[i][0], goal_action[i][1]))
            if (reward[i] > 0.5) * (prediction[i] < 0.5):
                print("!!!!MISSED!!!!")


def predict(session, graph, args, goal, action):

    if args.NORMALIZE_VARS:
        goal = embed.normalize_vars(goal)
        action = embed.normalize_vars(action)
        action = embed.add_or_node(action)

        [embeddingG, connectionG, var_connectionG] = embed.clause2embedding(goal, args.EMBEDDING_SIZE, args.NODE_COUNT, collapse=args.COLLAPSE, add_var=args.ADD_VAR)
        [embeddingA, connectionA, var_connectionA] = embed.clause2embedding(action, args.EMBEDDING_SIZE, args.NODE_COUNT, collapse=args.COLLAPSE, add_var=args.ADD_VAR)

        embeddingG = np.tile(embeddingG, (args.BATCH_SIZE, 1, 1))
        connectionG = np.tile(connectionG, (args.BATCH_SIZE, 1, 1))
        embeddingA = np.tile(embeddingA, (args.BATCH_SIZE, 1, 1))
        connectionA = np.tile(connectionA, (args.BATCH_SIZE, 1, 1))

        (prediction, ) = session.run([graph.prediction],
                                     {graph.input_embeddingG: embeddingG,
                                      graph.connectionG: connectionG,
                                      # graph.var_connectionG: var_connectionG,
                                      graph.input_embeddingA: embeddingA,
                                      graph.connectionA: connectionA,
                                      # graph.var_connectionA: var_connectionA,
                                     })
        prediction = prediction[0]
        return prediction

DEFAULT_ARGS = AttrDict({
    'BATCH_SIZE': 10,
    'NODE_COUNT': 40,
    'EPOCHS':500,
    'UPDATE_ITERATION': 4,
    'EMBEDDING_SIZE': 100,
    'HIDDEN_LAYERS': [100,100],
    'HIDDEN_ACTIVATION': tf.nn.relu,
    'END_ACTIVATION': tf.nn.relu,
    'LEARNING_RATE': 0.0001, # 0.002,
    'ADD_VAR': True,
    'COLLAPSE': False,
    'RESIDUAL': True,
    'ROOT_EMBEDDING': False,
    'FILTER': None,
    'NORMALIZE_VARS': True,
    'SAME_LABEL_COLLAPSE': "mean", # "mean" / "max" / "prob"
    'SAVE_FREQUENCY': 100,
})


def main():
    # datafile = "trajectory.json"
    # modelfile = "tmp/model_simple_pure"
    # datafile = "robinson_random_longer1_trajectory.json"
    # modelfile = "tmp/model_random_longer1" 
    # datafile = "robinson_noproof_random_trajectory.json"
    # modelfile = "tmp/model_noproof_random"
    datafile = "baseline_random_longer1_trajectory.json"
    modelfile = "tmp/model_baseline_random_longer1_prob" 
    args = DEFAULT_ARGS

    datadict = read_data(datafile, args)
    print("Size: ", len(datadict.rewards))
    print("Positive: ", np.sum(datadict.rewards > 0))

    config = tf.ConfigProto()
    config.gpu_options.allow_growth=True
    with tf.Session(config=config) as session:
        graph = Graph(args)
        graph.add_train_op()
        session.run(tf.global_variables_initializer())
        saver = tf.train.Saver(max_to_keep=None)

        train_model(session, graph, args, datadict, saver, modelfile)
        eval_model(session, graph, args, datadict)        

        saved = saver.save(session, modelfile)
        print('Saved model to ' + saved)

if __name__ == '__main__':
    main()
