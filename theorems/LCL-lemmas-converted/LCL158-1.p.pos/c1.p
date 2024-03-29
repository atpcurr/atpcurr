fof(c_0_20,conjecture,not(truth)=falsehood).
cnf(or_commutativity,axiom,or(A,B)=or(B,A)).
cnf(or_definition,axiom,or(A,B)=implies(not(A),B)).
cnf(wajsberg_4,axiom,implies(implies(not(A),not(B)),implies(B,A))=truth).
cnf(wajsberg_1,axiom,implies(truth,A)=A).
cnf(false_definition,axiom,not(truth)=falsehood).
cnf(wajsberg_3,axiom,implies(implies(A,B),B)=implies(implies(B,A),A)).
cnf(and_star_definition,axiom,and_star(A,B)=not(or(not(A),not(B)))).
cnf(and_definition,axiom,and(A,B)=not(or(not(A),not(B)))).
cnf(wajsberg_2,axiom,implies(implies(A,B),implies(implies(B,C),implies(A,C)))=truth).
cnf(xor_commutativity,axiom,(A xor B)=(B xor A)).
cnf(xor_definition,axiom,(A xor B)=or(and(A,not(B)),and(not(A),B))).
cnf(c_0_12,axiom,or(A,B)=or(B,A)).
cnf(c_0_13,axiom,or(A,B)=implies(not(A),B)).
cnf(c_0_14,axiom,implies(implies(not(A),not(B)),implies(B,A))=truth).
cnf(c_0_15,axiom,implies(truth,A)=A).
cnf(c_0_16,axiom,not(truth)=falsehood).
cnf(c_0_21,axiom,implies(implies(A,B),B)=implies(implies(B,A),A)).
cnf(c_0_26,axiom,and_star(A,B)=not(or(not(A),not(B)))).
cnf(c_0_31,axiom,and(A,B)=not(or(not(A),not(B)))).
cnf(c_0_32,axiom,implies(implies(A,B),implies(implies(B,C),implies(A,C)))=truth).
cnf(c_0_36,axiom,(A xor B)=(B xor A)).
cnf(c_0_37,axiom,(A xor B)=or(and(A,not(B)),and(not(A),B))).
