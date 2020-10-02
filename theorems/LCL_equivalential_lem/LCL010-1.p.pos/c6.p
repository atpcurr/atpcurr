fof(c_0_10,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(A)|~is_a_theorem(equivalent(equivalent(B,C),equivalent(C,D)))|~is_a_theorem(equivalent(equivalent(B,D),A)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(yqf,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(C,B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(C,B))))).
