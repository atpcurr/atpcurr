fof(c_0_10,conjecture,![A]:![B]:![C]:(is_a_theorem(A)|~is_a_theorem(equivalent(B,equivalent(C,A)))|~is_a_theorem(equivalent(B,C)))).
cnf(condensed_detachment,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(wn,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(C,equivalent(A,B))))).
cnf(c_0_3,axiom,(is_a_theorem(A)|~is_a_theorem(equivalent(B,A))|~is_a_theorem(B))).
cnf(c_0_4,axiom,is_a_theorem(equivalent(equivalent(A,equivalent(B,C)),equivalent(C,equivalent(A,B))))).
