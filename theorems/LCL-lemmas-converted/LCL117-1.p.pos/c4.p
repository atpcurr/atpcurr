fof(c_0_8,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(A,B))|~is_a_theorem(equivalent(A,C))|~is_a_theorem(equivalent(B,C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(yqm,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,B),equivalent(C,A))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,B),equivalent(C,A))))).
