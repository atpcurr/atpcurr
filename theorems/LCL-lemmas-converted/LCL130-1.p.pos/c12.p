fof(c_0_23,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(equivalent(D,B),C)))|~is_a_theorem(equivalent(A,D)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(p_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(B,D),equivalent(C,D)))),A))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(B,D),equivalent(C,D)))),A))).