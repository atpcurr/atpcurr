fof(c_0_25,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(A,equivalent(equivalent(B,B),C)))|~is_a_theorem(equivalent(A,C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(lg_3,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),D),equivalent(equivalent(B,C),D)),E),E))).
cnf(lg_2,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(B,C)),D),D))).
cnf(c_0_4,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_5,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),D),equivalent(equivalent(B,C),D)),E),E))).
cnf(c_0_8,axiom,is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(A,B),equivalent(A,C)),equivalent(B,C)),D),D))).