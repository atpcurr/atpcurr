fof(c_0_10,conjecture,![A]:![B]:![C]:(is_a_theorem(equivalent(equivalent(A,B),equivalent(C,equivalent(B,A))))|~is_a_theorem(C))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(q_3,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(A,equivalent(B,C)),equivalent(C,B))))).
cnf(q_4,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(B,C))))).
cnf(c_0_4,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_5,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(A,equivalent(B,C)),equivalent(C,B))))).
cnf(c_0_12,axiom,is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(B,C))))).
