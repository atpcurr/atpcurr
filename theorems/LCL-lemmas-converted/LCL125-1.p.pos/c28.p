fof(c_0_53,conjecture,![A]:![B]:![C]:![D]:(is_a_theorem(equivalent(A,equivalent(B,equivalent(C,D))))|~is_a_theorem(equivalent(B,equivalent(A,equivalent(D,C)))))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(q_3,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(A,equivalent(B,C)),equivalent(C,B))))).
cnf(q_2,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(C,B)),equivalent(A,C)))).
cnf(c_0_4,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_5,axiom,is_a_theorem(equivalent(A,equivalent(equivalent(A,equivalent(B,C)),equivalent(C,B))))).
cnf(c_0_10,axiom,is_a_theorem(equivalent(equivalent(equivalent(A,B),equivalent(C,B)),equivalent(A,C)))).
