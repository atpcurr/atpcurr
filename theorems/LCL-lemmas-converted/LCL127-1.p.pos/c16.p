fof(c_0_21,conjecture,![A]:![B]:![C]:![D]:![E]:![F]:(is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),C),equivalent(equivalent(D,B),C)),E),equivalent(F,E)))|~is_a_theorem(equivalent(F,equivalent(A,D))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(s_2,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
