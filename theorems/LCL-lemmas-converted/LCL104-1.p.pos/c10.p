fof(c_0_16,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(equivalent(equivalent(A,B),C),D))|~is_a_theorem(equivalent(C,equivalent(equivalent(B,A),D))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(q_3,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(equivalent(B,A),C)),C))).
cnf(p_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(equivalent(equivalent(B,C),equivalent(B,D)),equivalent(C,D)),A)))).
cnf(c_0_4,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_5,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(equivalent(B,A),C)),C))).
cnf(c_0_8,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(equivalent(equivalent(B,C),equivalent(B,D)),equivalent(C,D)),A)))).
