fof(c_0_42,conjecture,![A]:![B]:(is_a_theorem(equivalent(A,B))|~is_a_theorem(equivalent(B,A)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(xhk,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(A,C),B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(A,C),B))))).
