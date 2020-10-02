fof(c_0_10,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(B,C))))|~is_a_theorem(D))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(lg_2,axiom,is_a_theorem(equivalent(A,equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(B,D),equivalent(C,D))))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(B,D),equivalent(C,D))))))).
