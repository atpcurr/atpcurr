fof(c_0_25,conjecture,![A]:![B]:![C]:![D]:is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(equivalent(D,B),equivalent(equivalent(A,D),C))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(q_2,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,A),equivalent(C,B))))).
cnf(lg_2,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(B,C)),D),D))).
cnf(q_1,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,B),A))))).
cnf(c_0_5,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_6,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,A),equivalent(C,B))))).
cnf(c_0_7,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(B,C)),D),D))).
cnf(c_0_12,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,B),A))))).