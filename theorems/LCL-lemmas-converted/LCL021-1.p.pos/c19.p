fof(c_0_15,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(B,equivalent(D,A))))|~is_a_theorem(D)|~is_a_theorem(C))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(xhn,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,A),B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(B,C),equivalent(equivalent(C,A),B))))).
