fof(c_0_30,conjecture,![A]:![B]:and_star(A,truth xor and_star(truth xor B,A))=and_star(B,truth xor and_star(truth xor A,B))).
cnf(axiom_2,axiom,(A xor falsehood)=A).
cnf(xor_commutativity,axiom,(A xor B)=(B xor A)).
cnf(axiom_7,axiom,(A xor (truth xor B))=(A xor truth xor B)).
cnf(axiom_3,axiom,(A xor A)=falsehood).
cnf(and_star_commutativity,axiom,and_star(A,B)=and_star(B,A)).
cnf(axiom_8,axiom,and_star(and_star(truth xor A,B)xor truth,B)=and_star(and_star(truth xor B,A)xor truth,A)).
cnf(implies_definition,axiom,implies(A,B)=(truth xor and_star(A,truth xor B))).
cnf(c_0_8,axiom,(A xor falsehood)=A).
cnf(c_0_9,axiom,(A xor B)=(B xor A)).
cnf(c_0_10,axiom,(A xor (truth xor B))=(A xor truth xor B)).
cnf(c_0_11,axiom,(A xor A)=falsehood).
cnf(c_0_12,axiom,and_star(A,B)=and_star(B,A)).
cnf(c_0_17,axiom,and_star(and_star(truth xor A,B)xor truth,B)=and_star(and_star(truth xor B,A)xor truth,A)).
cnf(c_0_24,axiom,implies(A,B)=(truth xor and_star(A,truth xor B))).