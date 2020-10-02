fof(c_0_23,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(A,B))|~is_a_theorem(equivalent(C,B))|~is_a_theorem(equivalent(A,C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(s_3,axiom,is_a_theorem(equivalent(A,equivalent(A,equivalent(equivalent(equivalent(B,C),equivalent(D,C)),equivalent(B,D)))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(A,equivalent(equivalent(equivalent(B,C),equivalent(D,C)),equivalent(B,D)))))).
