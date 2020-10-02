fof(c_0_22,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(equivalent(A,B),A))|~is_a_theorem(equivalent(C,B))|~is_a_theorem(C))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(xcb,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(equivalent(A,B),equivalent(C,B)),C)))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(equivalent(A,B),equivalent(C,B)),C)))).
