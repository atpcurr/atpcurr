fof(c_0_25,conjecture,![A]:![B]:![C]:is_a_theorem(equivalent(equivalent(equivalent(A,equivalent(B,C)),equivalent(C,B)),A))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(s_6,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(equivalent(equivalent(B,C),equivalent(D,C)),equivalent(B,D))),A))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(equivalent(equivalent(B,C),equivalent(D,C)),equivalent(B,D))),A))).