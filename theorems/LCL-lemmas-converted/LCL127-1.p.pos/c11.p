fof(c_0_15,conjecture,![A]:![B]:![C]:![D]:![E]:![F]:(is_a_theorem(A)|~is_a_theorem(equivalent(equivalent(equivalent(B,equivalent(C,equivalent(D,E))),equivalent(equivalent(F,E),C)),A))|~is_a_theorem(equivalent(B,equivalent(F,D))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(s_2,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
