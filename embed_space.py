from gym.spaces import Space
import numpy as np


class ProbVector(Space):
    # A probability vector of unspecified length

    def __init__(self):
        super(ProbVector, self).__init__(shape=[None], dtype=np.float32)

    def sample(self):
        assert False, "We are not supposed to sample from ProbVector space"

    def contains(self, x):
        return (x.ndim == 1) and (np.abs(np.sum(x) - 1.0) < e-5)


class TableauEmbedding(Space):
    """
    A pair of clause embedding lists
    Each clause embedding is a triple [initial_embeddings, connection, var_connection]
    """
    def __init__(self):
        super(TableauEmbedding, self).__init__(None, None)

    def sample(self):
        assert False, "We are not supposed to sample from TableauEmbedding space"

    def contains(self, x):
        assert False, "When do I need to check TableauEmbedding space containment???"
        return True
