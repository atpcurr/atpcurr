import os
import numpy as np

# ops is a string, e.g. "plus|30,mul|30"
# returns (<list of ops>, <dict of op -> limit>)
def process_op_list(ops):
    if "," in ops: 
        ops = ops.split(",")
    else:
        ops = [ops, ]
    ops = [o.split("|") for o in ops]
    op_list = []
    op_limits = {}
    for (op, limit) in ops:
        op_list.append(op)
        op_limits[op] = int(limit)
    return tuple(op_list), op_limits

# return a tuple of operators
def generate_operators(ops, op_count, useall=False):
    if useall:
        curr_ops = np.random.permutation(ops)
    else:
        indices = np.random.randint(low=0, high=len(ops), size=op_count)
        curr_ops = np.array(ops)[indices]
    return tuple(curr_ops)

# generate numbers for the operator list curr_ops, using and number limits specified by first_limit and op_limits
# return numbers and expression value
def generate_numbers(curr_ops, first_limit, op_limits):
    curr_value = np.random.randint(low=0, high=first_limit)
    numbers = [curr_value]
    for op in curr_ops:
        limit = op_limits[op]
        if op == 'plus':
            n = np.random.randint(low=0, high=limit)
            numbers.append(n)
            curr_value += n
        elif op == 'mul':
            n = np.random.randint(low=0, high=limit)
            numbers.append(n)
            curr_value *= n
        elif op == 'exp':
            n = np.random.randint(low=0, high=limit)
            numbers.append(n)
            curr_value **= n
        elif op == 'neg':
            n = np.random.randint(low=0, high=min(limit,curr_value+1))
            numbers.append(n)
            curr_value -= n
        elif op == 'div':
            while True:
                n = np.random.randint(low=1, high=limit)
                if curr_value % n == 0:
                    break
            numbers.append(n)
            curr_value //= n
        elif op == 'log':
            assert False, "Not Yet implemented"
        else:
            assert False, "Unknown operator: " + op
    return tuple(numbers), curr_value

def decimal_to_unary_string(decimal):
    assert decimal >= 0
    prefix = ""
    suffix = ""
    for i in range(decimal):
        prefix += "s("
        suffix += ")"
    return prefix + "o" + suffix

def decimal_to_binary_string(decimal):
    assert decimal >= 0
    prefix = ""
    suffix = ""
    while decimal > 1:
        d1 = decimal % 2
        decimal = decimal // 2
        prefix += "b(n{},".format(d1)
        suffix += ")"
    return "{}n{}{}".format(prefix, decimal, suffix)

def decimal_to_binary_hol_string(decimal):
    assert decimal >= 0
    result = "o"
    if decimal == 0:
        return result
    length = int(np.log2(decimal)) + 1
    for i in range(length):
        b = 2 ** (length-1-i)
        if decimal >= b:
            result = "bit1({})".format(result)
            decimal -= b
        else:
            result = "bit0({})".format(result)
    return result


def decimal_to_string(decimal, encoding):
    if encoding == "unary":
        return decimal_to_unary_string(decimal)
    elif encoding == "binary":
        return decimal_to_binary_string(decimal)
    elif encoding == "binary_hol":
        return decimal_to_binary_hol_string(decimal)
    else:
        assert False, "Unknown encoding"

# given a list of numbers and operators, turn them into an expression using the specified encoding
# return (<string expression>, <string expression readable>)
def turn_to_formula(numbers, ops, encoding):
    assert len(numbers) == len(ops) + 1
    formula = decimal_to_string(numbers[0], encoding)
    formula_readable = str(numbers[0])
    for i, op in enumerate(ops):
        formula = "{}({},{})".format(op, formula, decimal_to_string(numbers[i+1], encoding))
        formula_readable = "{}({},{})".format(op, formula_readable, str(numbers[i+1]))
    return formula, formula_readable

# given numbers and ops for an expression and their value, create string in tptp format for expression=value
# return (<tptp expression>, <readable comment>)
def build_fof(numbers, ops, value, encoding):
    left_side, left_side_readable = turn_to_formula(numbers, ops, encoding)
    right_side, right_side_readable = turn_to_formula([value], [], encoding)
    conjecture = "{} = {}".format(left_side, right_side)
    fof = "fof(myformula, conjecture, {}).".format(conjecture)
    comment = "%theorem: {} = {}\n".format(left_side_readable, right_side_readable)
    return fof, comment

# given numbers1 and ops1 for an expression1 and numbers2 and ops2 for an expression2, create string in tptp format for expression1=expression2
# return (<tptp expression>, <readable comment>)
def build_pair_fof(numbers1, ops1, numbers2, ops2, encoding):
    left_side, left_side_readable = turn_to_formula(numbers1, ops1, encoding)
    right_side, right_side_readable = turn_to_formula(numbers2, ops2, encoding)
    conjecture = "{} = {}".format(left_side, right_side)
    fof = "fof(myformula, conjecture, {}).".format(conjecture)
    comment = "%theorem: {} = {}\n".format(left_side_readable, right_side_readable)
    return fof, comment

# generate term_count terms using op_count operators from op_list
# return dict(value -> list of terms)
def generate_terms(term_count, op_list, op_count, useall, first_limit, op_limits):
    term_map = {}
    for _ in range(term_count):
        curr_ops = generate_operators(op_list, op_count, useall)
        curr_numbers, curr_value = generate_numbers(curr_ops, first_limit, op_limits)
        term_map.setdefault(curr_value, [])
        item = (curr_numbers, curr_ops)
        if not item in term_map[curr_value]:
            term_map[curr_value].append(item)
    return term_map

def write_to_file(output_dir, output_file, comment, preamble, formula):
    f_out = open(os.path.join(output_dir,output_file), "w")
    f_out.write(comment)
    f_out.write(preamble)
    f_out.write(formula)
    f_out.close()

def build_name_term(numbers, ops):
    assert len(numbers) == len(ops) + 1
    result = str(numbers[0])
    for i, op in enumerate(ops):
        result += op[0]
        result += str(numbers[i+1])
    return result

def build_name(numbers, ops, value):
    result = build_name_term(numbers, ops)
    result += "__" + str(value)
    return result

def build_name_pair(numbers1, ops1, numbers2, ops2):
    result1 = build_name_term(numbers1, ops1)
    result2 = build_name_term(numbers2, ops2)
    result = result1 + "__" + result2
    return result

def build_name_gcd(numbers1, ops1, numbers2, ops2, numbers3, ops3):
    result1 = build_name_term(numbers1, ops1)
    result2 = build_name_term(numbers2, ops2)
    result3 = build_name_term(numbers3, ops3)
    result = result1 + "__" + result2 + "__" + result3
    return result

