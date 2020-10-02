fof(c_0_14,conjecture,![A]:![B]:![C]:is_a_theorem(equivalent(A,equivalent(equivalent(B,equivalent(C,equivalent(A,B))),C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(yql,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,B),equivalent(A,C))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(C,B),equivalent(A,C))))).
