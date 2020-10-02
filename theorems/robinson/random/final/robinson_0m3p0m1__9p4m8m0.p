%theorem: mul(plus(mul(0,3),0),1) = mul(mul(plus(9,4),8),0)
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
fof(myformula, conjecture, mul(plus(mul(o,s(s(s(o)))),o),s(o)) = mul(mul(plus(s(s(s(s(s(s(s(s(s(o))))))))),s(s(s(s(o))))),s(s(s(s(s(s(s(s(o))))))))),o)).