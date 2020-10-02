fof(c_0_9,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(B,C)),D))|~is_a_theorem(equivalent(equivalent(A,C),D)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(yqf,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(C,B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(C,B))))).
