fof(c_0_19,conjecture,![A]:![B]:(theorem(A)|~theorem(or(not(B),A))|~theorem(B))).
cnf(axiom_1_3,axiom,axiom(implies(A,or(B,A)))).
cnf(implies_definition,axiom,implies(A,B)=or(not(A),B)).
cnf(rule_2,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(rule_1,axiom,(theorem(A)|~axiom(A))).
cnf(c_0_5,axiom,axiom(implies(A,or(B,A)))).
cnf(c_0_6,axiom,implies(A,B)=or(not(A),B)).
cnf(c_0_7,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(c_0_8,axiom,(theorem(A)|~axiom(A))).