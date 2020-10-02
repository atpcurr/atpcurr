from stable_baselines.common.policies import ActorCriticPolicy
from stable_baselines.common.tf_layers import linear
from stable_baselines.common.policies import mlp_extractor
from stable_baselines import logger
import tensorflow as tf
import numpy as np

from embed_model import Graph, basic_MLP, DEFAULT_ARGS
from util import AttrDict

class EmbeddingPolicy(ActorCriticPolicy):
    """
    Policy object that implements actor critic, using a feed forward neural network.
    :param sess: (TensorFlow session) The current TensorFlow session
    :param ob_space: (Gym Space) The observation space of the environment
    :param ac_space: (Gym Space) The action space of the environment
    :param n_env: (int) The number of environments to run
    :param n_steps: (int) The number of steps to run for each environment
    :param n_batch: (int) The number of batch to run (n_envs * n_steps)
    :param reuse: (bool) If the policy is reusable or not
    :param layers: ([int]) The size of the Neural network for the policy (if None, default to [64, 64])
    :param cnn_extractor: (function (TensorFlow Tensor, ``**kwargs``): (TensorFlow Tensor)) the CNN feature extraction
    :param feature_extraction: (str) The feature extraction type ("cnn" or "mlp")
    :param kwargs: (dict) Extra keyword arguments for the nature CNN feature extraction
    """

    def __init__(self, sess, ob_space, ac_space, n_env, n_steps, n_batch, args, reuse=tf.compat.v1.AUTO_REUSE, **kwargs):
        super(EmbeddingPolicy, self).__init__(sess, ob_space, ac_space, n_env, n_steps, n_batch, reuse=reuse, scale=False)
        self.args = args
        self.step_counter = 0

        graph_args = AttrDict({
            'BATCH_SIZE': 1,
            'NODE_COUNT': args.graph_node_count,
            'UPDATE_ITERATION': args.graph_update_iteration,
            'EMBEDDING_SIZE': args.graph_embedding_size,
            'HIDDEN_LAYERS': args.graph_hidden_layers,
            'HIDDEN_ACTIVATION': tf.nn.relu,
            'END_ACTIVATION': tf.nn.relu,
            'RESIDUAL': True,
            'ROOT_EMBEDDING': False,
        })
        

        with tf.variable_scope("model", reuse=tf.compat.v1.AUTO_REUSE):
            self.graph = Graph(graph_args)

            pi_latent, vf_latent = graph_extractor(self.processed_obs, self.graph, args)

            self._value_fn = linear(vf_latent, 'vf', 1)

            self._policy = pi_latent
            self._proba_distribution = self.pdtype.proba_distribution_from_flat(pi_latent)
            # self.q_value = vf_latent
            self.q_value = linear(vf_latent, 'q', self.args.n_action_slots, init_scale=0.01)

            # self._proba_distribution, self._policy, self.q_value = \
            #     self.pdtype.proba_distribution_from_latent(pi_latent, vf_latent, init_scale=0.01)

        self._setup_init()

    def step(self, obs, state=None, mask=None, deterministic=False):
        self.step_counter +=1
        if deterministic:
            action, value, neglogp = self.sess.run([self.deterministic_action, self.value_flat, self.neglogp],
                                                   {self.obs_ph: obs})
        else:
            #action, value, neglogp = self.sess.run([self.action, self.value_flat, self.neglogp],
            action, value, neglogp, policy_np = self.sess.run([self.action, self.value_flat, self.neglogp, self.policy],
                                                   {self.obs_ph: obs})
            policy_np = policy_np[0]
            policy_np = policy_np[policy_np > -1e5]
            logger.logkv("update_no", self.step_counter)
            logger.record_tabular("policy_logit_avg", np.mean(policy_np))

        return action, value, self.initial_state, neglogp

    def proba_step(self, obs, state=None, mask=None):
        return self.sess.run(self.policy_proba, {self.obs_ph: obs})

    def value(self, obs, state=None, mask=None):
        return self.sess.run(self.value_flat, {self.obs_ph: obs})

    
def graph_extractor(observations, graph, args):
    """
    Constructs an MLP that receives observations as an input and outputs a latent representation for the policy and
    a value network. The ``net_arch`` parameter allows to specify the amount and size of the hidden layers and how many
    of them are shared between the policy network and the value network. It is assumed to be a list with the following
    structure:
    1. An arbitrary length (zero allowed) number of integers each specifying the number of units in a shared layer.
       If the number of ints is zero, there will be no shared layers.
    2. An optional dict, to specify the following non-shared layers for the value network and the policy network.
       It is formatted like ``dict(vf=[<value layer sizes>], pi=[<policy layer sizes>])``.
       If it is missing any of the keys (pi or vf), no non-shared layers (empty list) is assumed.
    For example to construct a network with one shared layer of size 55 followed by two non-shared layers for the value
    network of size 255 and a single non-shared layer of size 128 for the policy network, the following layers_spec
    would be used: ``[55, dict(vf=[255, 255], pi=[128])]``. A simple shared network topology with two layers of size 128
    would be specified as [128, 128].
    :param flat_observations: (tf.Tensor) The observations to base policy and value function on.
    :param net_arch: ([int or dict]) The specification of the policy and value networks.
        See above for details on its formatting.
    :param act_fun: (tf function) The activation function to use for the networks.
    :return: (tf.Tensor, tf.Tensor) latent_policy, latent_value of the specified network.
        If all layers are shared, then ``latent_policy == latent_value``
    """
    emb = observations[:,0]
    conn = observations[:,1]
    embS = emb[:,0]
    connS = conn[:,0]
    embAs = emb[:,1:]
    connAs = conn[:,1:]

    embeddingG = graph.forward(embS, connS, "goal_")[0]

    activ = tf.nn.relu
    # value function (works from state only)
    vf_h = embeddingG
    for i, layer_size in enumerate(args.network_layers):
        vf_h = activ(linear(vf_h, 'vf_fc' + str(i), n_hidden=layer_size, init_scale=np.sqrt(2)))
    vf_latent = vf_h

    pis = []
    for i in range(args.n_action_slots):
        embA = embAs[:,i]
        connA = connAs[:,i]
        embeddingA = graph.forward(embA, connA, "action_")[0]
        pi_h = tf.concat([embeddingG,embeddingA], axis=1)
        for j, layer_size in enumerate(args.network_layers):
            pi_h = activ(linear(pi_h, 'pi_fc' + str(j), n_hidden=layer_size, init_scale=np.sqrt(2)))
        pi_h = linear(pi_h, 'pi_fc_last', n_hidden=1, init_scale=0.01) # init_scale=np.sqrt(2))

        flag = tf.reduce_sum(embA, axis=(1,2))
        pi_h = tf.where(flag > 0, pi_h, pi_h * 0 - 1e7)

        pis.append(pi_h)
    pi_latent = tf.layers.flatten(tf.concat(pis, axis=1))
    
    return pi_latent, vf_latent
