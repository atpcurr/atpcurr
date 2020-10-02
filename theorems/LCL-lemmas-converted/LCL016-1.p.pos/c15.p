fof(c_0_16,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(A,B))|~is_a_theorem(C)|~is_a_theorem(equivalent(D,A))|~is_a_theorem(equivalent(equivalent(C,D),B)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(yro,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(C,equivalent(equivalent(C,B),A))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(C,equivalent(equivalent(C,B),A))))).
