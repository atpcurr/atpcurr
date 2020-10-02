%theorem: mul(mul(plus(1,1),1),7) = 14
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
cnf(myformula, negated_conjecture, mul(mul(plus(s(o),s(o)),s(o)),s(s(s(s(s(s(s(o)))))))) != s(s(s(s(s(s(s(s(s(s(s(s(s(s(o))))))))))))))).