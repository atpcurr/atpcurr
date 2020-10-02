import argparse
import os


if __name__ == "__main__":

    preamble_file = "preamble_josef.p"
    N = 10
    M = 10
    output_dir = "./"
    formula_format = "cnf"

    parser = argparse.ArgumentParser(description="Generator for multiplication", 
			  	     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("-N", "--number_1", default=N, help="The N number (default: {}".format(N))
    parser.add_argument("-M", "--number_2", default=M, help="The M number (default: {}".format(M))
    parser.add_argument("-p", "--preamble", default=preamble_file, help="The preamble (default: {})".format(preamble_file))
    parser.add_argument("-o", "--output_dir", default=output_dir, help="The output directory (default: {})".format(output_dir))
    parser.add_argument("-f", "--format", default=formula_format, help="The formula format (default: {})".format(formula_format))

    args = parser.parse_args()

    preamble_file = args.preamble
    N = int(args.number_1)
    M = int(args.number_2)
    output_dir = args.output_dir
    formula_format = args.format

    f_in = open(preamble_file, "r") 
    preamble = f_in.read()

    for i in range(0,N):
        number_1 = "o"
        for _ in range(i):
            number_1 = "s({})".format(number_1) 
        for j in range (0,M):
            number_2 = "o"
            for _ in range(j):
                number_2 = "s({})".format(number_2) 
            suma = "o"
            for _ in range(i+j):
                suma = "s({})".format(suma) 

            f_out = open(os.path.join(output_dir,"peano_add_{}_{}_{}.p".format(i,j,i+j)), "w")
            f_out.write(preamble)

            if formula_format == "fof":
                f_out.write("fof(computeSquare, conjecture, plus({}, {}) = {}).".format(number_1, number_2, suma))
            else:
                f_out.write("cnf(computeSquare, negated_conjecture, plus({}, {}) != {}).".format(number_1, number_2, suma))
            f_out.close()
