import argparse
import math
import numpy as np
import os

from gen_util import *


# np.random.seed(100)
    

# builds gcd(A,B) = D, where A,B,D are terms
def build_gcd(args, prefix, preamble):
    op_list, op_limits = process_op_list(args.ops)
    term_map = generate_terms(args.count, op_list, args.op_count, args.useall, args.first_limit, op_limits)
    for value1 in term_map.keys():
        terms1 = term_map[value1]
        for value2 in term_map.keys():
            gcd = math.gcd(value1, value2)
            if not gcd in term_map.keys():
                continue

            terms2 = term_map[value2]
            terms3 = term_map[gcd]

            for (numbers1, ops1) in terms1:
                t1, t_readable1 = turn_to_formula(numbers1, ops1, args.encoding)
                for (numbers2, ops2) in terms2:
                    t2, t_readable2 = turn_to_formula(numbers2, ops2, args.encoding)
                    for (numbers3, ops3) in terms3:
                        t3, t_readable3 = turn_to_formula(numbers3, ops3, args.encoding)

                        conjecture = "gcd({},{},{})".format(t1, t2, t3)
                        formula = "fof(myformula, conjecture, {}).".format(conjecture)
                        comment = "%theorem: gcd({},{}) = {}\n".format(t_readable1, t_readable2, t_readable3)

                        name = build_name_gcd(numbers1, ops1, numbers2, ops2, numbers3, ops3)
                        print("\n", comment, formula, "\n", name)
                        output_file = "{}_{}.p".format(prefix, name)
                        write_to_file(args.output_dir, output_file, comment, preamble, formula)


# builds f=N where f is a random formula and N is an number
def build_random(args, prefix, preamble):
    op_list, op_limits = process_op_list(args.ops)
    for i in range(args.count):
        curr_ops = generate_operators(op_list, args.op_count, args.useall)
        curr_numbers, curr_value = generate_numbers(curr_ops, args.first_limit, op_limits)
        formula, comment = build_fof(curr_numbers, curr_ops, curr_value, args.encoding)
        name = build_name(curr_numbers, curr_ops, curr_value)
        print("\n", comment, formula, "\n", name)
        output_file = "{}_{}.p".format(prefix, name)
        write_to_file(args.output_dir, output_file, comment, preamble, formula)

# builds f1=f2 where both f1 and f2 are random formulae that have the same value
def build_pairs(args, prefix, preamble):
    op_list, op_limits = process_op_list(args.ops)
    term_map = generate_terms(args.count, op_list, args.op_count, args.useall, args.first_limit, op_limits)
    for value in term_map.keys():
        terms = term_map[value]
        leftIndex = 0
        rightIndex = 1
        while True:
            if leftIndex >= len(terms):
                break
            elif rightIndex >= len(terms):
                leftIndex += 1
                rightIndex = leftIndex + 1
            else:
                numbers1, ops1 = terms[leftIndex]
                numbers2, ops2 = terms[rightIndex]
                formula, comment = build_pair_fof(numbers1, ops1, numbers2, ops2, args.encoding)
                rightIndex += 1
                name = build_name_pair(numbers1, ops1, numbers2, ops2)
                print("\n", comment, formula, "\n", name)
                output_file = "{}_{}.p".format(prefix, name)
                write_to_file(args.output_dir, output_file, comment, preamble, formula)

# builds f1=f2 where both f1 and f2 are random formulae that have the same value, but using different operators
def build_pairs_diffops(args, prefix, preamble):
    if args.ops_left is None:
        args.ops_left = args.ops
    if args.ops_right is None:
        args.ops_right = args.ops
        
    op_left_list, op_left_limits = process_op_list(args.ops_left)
    op_right_list, op_right_limits = process_op_list(args.ops_right)
    term_map_left = generate_terms(args.count, op_left_list, args.op_count, args.useall, args.first_limit, op_left_limits)
    term_map_right = generate_terms(args.count, op_right_list, args.op_count, args.useall, args.first_limit, op_right_limits)
    for value in term_map_left.keys():
        terms_left = term_map_left[value]
        if value in term_map_right:
            terms_right = term_map_right[value]
        else:
            continue

        for term1 in terms_left:
            for term2 in terms_right:
                numbers1, ops1 = term1
                numbers2, ops2 = term2
                formula, comment = build_pair_fof(numbers1, ops1, numbers2, ops2, args.encoding)
                name = build_name_pair(numbers1, ops1, numbers2, ops2)
                print("\n", comment, formula, "\n", name)
                output_file = "{}_{}.p".format(prefix, name)
                write_to_file(args.output_dir, output_file, comment, preamble, formula)


parser = argparse.ArgumentParser()
parser.add_argument("--count", dest="count", type=int, default=10, help="Number of formulae to generate")
parser.add_argument("--first_limit", dest="first_limit", type=int, default=10, help="Limit of the first number of the formula")
parser.add_argument("--op_count", dest="op_count", type=int, default=1, help="The number of operators used in the formula")
parser.add_argument("--ops", dest="ops", default="plus|5,neg|5,mul|5,div|5,exp|2", help="Comma separated list of available operators|limit pairs where limit refers to the right argument (plus, neg, mul, div, exp, log)")
parser.add_argument("--ops_left", dest="ops_left", default=None, help="Comma separated list of available operators|limit pairs where limit refers to the right argument (plus, neg, mul, div, exp, log)")
parser.add_argument("--ops_right", dest="ops_right", default=None, help="Comma separated list of available operators|limit pairs where limit refers to the right argument (plus, neg, mul, div, exp, log)")
parser.add_argument("--preamble_file", dest="preamble_file", default="peano_extended.p", help="The preamble file")
parser.add_argument("--output_dir", dest="output_dir", default="../theorems/arithmetic", help="The output directory")
parser.add_argument("--useall", dest="useall", default=0, type=int, help="If > 0 then use each operator exactly once. Useful for generating learning problems")
parser.add_argument("--type", dest="type", default="onesided", help="onesided/pairs/gcd: term=N / term1=term2, gcd(A,B)=C")
parser.add_argument("--encoding", dest="encoding", default="unary", help="unary/binary/binary_hol")

args = parser.parse_args()

for a in vars(args):
    print("{}: {}".format(a, vars(args)[a]))
print("\n\n")

f_in = open(args.preamble_file, "r") 
preamble = f_in.read()

if args.preamble_file == "peano_fof.p":
    prefix = "robinson"
elif args.preamble_file == "peano_extended_fof.p":
    prefix = "extended"
elif args.preamble_file =="peano_binary.p":
    prefix = "binary"
elif args.preamble_file =="peano_binary_hol.p":
    prefix = "binary"
elif args.preamble_file =="gcd_binary.p":
    prefix = "gcd"
elif args.preamble_file == "ternary_peano_unary.p":
    prefix = "ternary_unary"
elif args.preamble_file == "ternary_gcd_binary.p":
    prefix = "gcd"
else:
    assert False

# ensure output dir exists
if not os.path.exists(args.output_dir):
    os.makedirs(args.output_dir)


if args.type == "onesided":
    result = build_random(args, prefix, preamble)
elif args.type == "pairs":
    if (args.ops_left is not None) or (args.ops_right is not None):
        result = build_pairs_diffops(args, prefix, preamble)
    else:
        result = build_pairs(args, prefix, preamble)
elif args.type == "gcd":
    result = build_gcd(args, prefix, preamble)
else:
    assert False


