fof(c_0_12,conjecture,![A]:(theorem(A)|~axiom(A))).
cnf(rule_2,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(implies_definition,axiom,implies(A,B)=or(not(A),B)).
cnf(rule_1,axiom,(theorem(A)|~axiom(A))).
cnf(axiom_1_5,axiom,axiom(implies(or(A,or(B,C)),or(B,or(A,C))))).
cnf(axiom_1_6,axiom,axiom(implies(implies(A,B),implies(or(C,A),or(C,B))))).
cnf(c_0_6,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(c_0_7,axiom,implies(A,B)=or(not(A),B)).
cnf(c_0_9,axiom,(theorem(A)|~axiom(A))).
cnf(c_0_10,axiom,axiom(implies(or(A,or(B,C)),or(B,or(A,C))))).
cnf(c_0_17,axiom,axiom(implies(implies(A,B),implies(or(C,A),or(C,B))))).
