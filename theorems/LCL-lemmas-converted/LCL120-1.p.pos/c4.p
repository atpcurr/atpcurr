fof(c_0_8,conjecture,![A]:![B]:is_a_theorem(equivalent(A,equivalent(B,equivalent(B,A))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(qyf,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(C,B)))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(C,B)))).
