%theorem: mul(mul(mul(3,1),9),0) = mul(mul(plus(0,9),7),0)
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
fof(myformula, conjecture, mul(mul(mul(s(s(s(o))),s(o)),s(s(s(s(s(s(s(s(s(o)))))))))),o) = mul(mul(plus(o,s(s(s(s(s(s(s(s(s(o)))))))))),s(s(s(s(s(s(s(o)))))))),o)).