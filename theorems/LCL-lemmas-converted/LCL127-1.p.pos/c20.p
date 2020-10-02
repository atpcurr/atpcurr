fof(c_0_24,conjecture,![A]:![B]:![C]:![D]:![E]:![F]:(is_a_theorem(equivalent(A,equivalent(equivalent(B,equivalent(C,D)),equivalent(E,E))))|~is_a_theorem(equivalent(A,equivalent(B,equivalent(equivalent(C,F),equivalent(D,F))))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(s_2,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(A,equivalent(equivalent(B,D),equivalent(C,D)))))).
