fof(c_0_12,conjecture,![A]:![B]:(is_a_theorem(A)|~is_a_theorem(equivalent(equivalent(B,B),A)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(q_3,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(equivalent(B,A),C)),C))).
cnf(p_1,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(equivalent(D,B),equivalent(equivalent(A,D),C))))).
cnf(c_0_4,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_5,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(equivalent(B,A),C)),C))).
cnf(c_0_6,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(equivalent(D,B),equivalent(equivalent(A,D),C))))).