fof(c_0_36,conjecture,![A]:![B]:![C]:axiom(or(not(or(A,or(B,C))),or(B,or(A,C))))).
cnf(axiom_1_4,axiom,axiom(implies(or(A,B),or(B,A)))).
cnf(implies_definition,axiom,implies(A,B)=or(not(A),B)).
cnf(rule_2,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(rule_1,axiom,(theorem(A)|~axiom(A))).
cnf(axiom_1_2,axiom,axiom(implies(or(A,A),A))).
cnf(axiom_1_5,axiom,axiom(implies(or(A,or(B,C)),or(B,or(A,C))))).
cnf(axiom_1_3,axiom,axiom(implies(A,or(B,A)))).
cnf(equivalent_defn,axiom,equivalent(A,B)=and(implies(A,B),implies(B,A))).
cnf(and_defn,axiom,and(A,B)=not(or(not(A),not(B)))).
cnf(c_0_10,axiom,axiom(implies(or(A,B),or(B,A)))).
cnf(c_0_11,axiom,implies(A,B)=or(not(A),B)).
cnf(c_0_12,axiom,(theorem(A)|~theorem(implies(B,A))|~theorem(B))).
cnf(c_0_13,axiom,(theorem(A)|~axiom(A))).
cnf(c_0_15,axiom,axiom(implies(or(A,A),A))).
cnf(c_0_16,axiom,axiom(implies(or(A,or(B,C)),or(B,or(A,C))))).
cnf(c_0_22,axiom,axiom(implies(A,or(B,A)))).
cnf(c_0_23,axiom,equivalent(A,B)=and(implies(A,B),implies(B,A))).
cnf(c_0_24,axiom,and(A,B)=not(or(not(A),not(B)))).