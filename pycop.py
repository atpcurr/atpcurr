#!/usr/bin/python3
from ctypes import *
import time
# import gc
# gc.set_debug(gc.DEBUG_STATS)


class ProverObject:

    def __init__(self, lib="./fcoplib.so"):
        """
        Initialize the ProverObject using the library file,
        the default is "fcoplib.so" in the current directory.
        We initialize bindings etc. since we provide functions
        to interact with the Object, the direct binds are all private
        variables with "_" as a prefix.
        :param lib: path to library
        :return: Prover_Object
        """
        # load compiled library
        self._cop_lib = cdll.LoadLibrary(lib)

        # init caml main
        self._cop_lib.cop_caml_init()

        # init python binding

        # set start function
        self._cop_start = self._cop_lib.py_start
        self._cop_start.restype = py_object

        # set action function
        self._cop_action = self._cop_lib.py_action
        self._cop_action.restype = py_object

        # set proof printer function
        self._cop_print_proof = self._cop_lib.cop_print_proof
        self._cop_print_proof.restype = None

    def start_proof(self, filename):
        """
        Starts a proof. Only calls cop_start, which is a binding to the
        cop_start function in fcop.ml the type of the OCaml function is:
        string-> int list list * (int list * int list) * int
        :param filename: name of problem file
        :return: 4-tuple, where the last element is meta data
        """
        return self._cop_start(filename)

    def prover_action(self, length, array):
        """
        Prover action. Only a binding to cop_action function in fcop.ml.
        The type of the ocaml function is:
        int list -> int list list * (int list * int list) * int
        :param length:
        :param array:
        :return:
        """
        return self._cop_action(length, array)

    # TODO: See if statefulness can be avoided
    def print_proof(self):
        """
        Printer for proof
        :return: None
        """
        self._cop_print_proof()

a_list = []
def main():
    global a_list
    import argparse
    parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('--time', help='time in seconds, floats are OK', type=float, default=10.)
    parser.add_argument('--file', help='file name with the theorem to be proved', type=str, default='a.p')
    # parser.add_argument('--file', help='file name with the theorem to be proved', type=str, default=b't113_pboole.p')
    args = parser.parse_args()

    # gc.disable()
    t0 = time.time()
    prover = ProverObject("./fcoplib.so")

    # cop_start returns a 4-tuple where the last is some meta data
    a = prover.start_proof(args.file.encode('UTF-8'))
    print("Current state: {}".format(a))

    a_list.append(a)

    rounds = 1
    while a[3] != 1 and time.time()-t0 < args.time:
        pyarr = range(len(a[0])-1, -1, -1)
#        pyarr = range(len(a[0]))
        arr = (c_long * len(pyarr))(*pyarr)
        a = prover.prover_action(len(pyarr), arr)
        print("Current state: {}".format(a))
        a_list.append(a)
        # print("Average time: {}".format((time.time()-t0)/rounds))
        # print("Current state: {}".format(a))
        rounds += 1

    print("# Total time {}".format(time.time() - t0))
    print ("# Rounds:{}".format(rounds))
    if a[3] == 1:
        prover.print_proof()

if __name__ == '__main__':
    main()

