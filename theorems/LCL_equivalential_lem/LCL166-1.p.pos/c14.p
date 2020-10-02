fof(c_0_32,conjecture,![A]:![B]:(is_a_theorem(equivalent(A,B))|~is_a_theorem(A)|~is_a_theorem(B))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(xhn,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,A),B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,A),B))))).
