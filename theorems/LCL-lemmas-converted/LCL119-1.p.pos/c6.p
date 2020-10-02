fof(c_0_9,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),A))|~is_a_theorem(B)|~is_a_theorem(C))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(xgj,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,equivalent(C,A)),equivalent(B,C))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,equivalent(C,A)),equivalent(B,C))))).
