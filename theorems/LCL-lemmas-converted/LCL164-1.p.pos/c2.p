fof(c_0_25,conjecture,![A]:![B]:and_star(A,B)=and_star(B,A)).
cnf(axiom_1,axiom,not(A)=(A xor truth)).
cnf(implies_definition,axiom,implies(A,B)=(truth xor and_star(A,truth xor B))).
cnf(axiom_7,axiom,(A xor (truth xor B))=(A xor truth xor B)).
cnf(axiom_3,axiom,(A xor A)=falsehood).
cnf(axiom_2,axiom,(A xor falsehood)=A).
cnf(xor_commutativity,axiom,(A xor B)=(B xor A)).
cnf(and_star_commutativity,axiom,and_star(A,B)=and_star(B,A)).
cnf(axiom_6,axiom,and_star(truth xor A,A)=falsehood).
cnf(and_star_associativity,axiom,and_star(and_star(A,B),C)=and_star(A,and_star(B,C))).
cnf(c_0_11,axiom,not(A)=(A xor truth)).
cnf(c_0_12,axiom,implies(A,B)=(truth xor and_star(A,truth xor B))).
cnf(c_0_13,axiom,(A xor (truth xor B))=(A xor truth xor B)).
cnf(c_0_14,axiom,(A xor A)=falsehood).
cnf(c_0_15,axiom,(A xor falsehood)=A).
cnf(c_0_16,axiom,(A xor B)=(B xor A)).
cnf(c_0_18,axiom,and_star(A,B)=and_star(B,A)).
cnf(c_0_23,axiom,and_star(truth xor A,A)=falsehood).
cnf(c_0_28,axiom,and_star(and_star(A,B),C)=and_star(A,and_star(B,C))).