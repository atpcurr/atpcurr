fof(c_0_60,conjecture,![A]:![B]:![C]:is_a_theorem(implies(implies(implies(A,B),C),implies(B,C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(implies(B,A))|~is_a_theorem(B))).
cnf(cn_1,axiom,is_a_theorem(implies(implies(A,B),implies(implies(B,C),implies(A,C))))).
cnf(cn_3,axiom,is_a_theorem(implies(A,implies(not(A),B)))).
cnf(cn_2,axiom,is_a_theorem(implies(implies(not(A),A),A))).
cnf(c_0_5,axiom,(is_a_theorem(A)|~is_a_theorem(implies(B,A))|~is_a_theorem(B))).
cnf(c_0_6,axiom,is_a_theorem(implies(implies(A,B),implies(implies(B,C),implies(A,C))))).
cnf(c_0_11,axiom,is_a_theorem(implies(A,implies(not(A),B)))).
cnf(c_0_14,axiom,is_a_theorem(implies(implies(not(A),A),A))).
