fof(c_0_50,conjecture,![A]:![B]:![C]:is_a_theorem(equivalent(equivalent(A,A),equivalent(equivalent(equivalent(B,C),C),B)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(um,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(B,equivalent(C,A))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),C),equivalent(B,equivalent(C,A))))).
