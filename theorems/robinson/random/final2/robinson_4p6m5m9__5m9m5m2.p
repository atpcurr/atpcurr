%theorem: mul(mul(plus(4,6),5),9) = mul(mul(mul(5,9),5),2)
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
fof(myformula, conjecture, mul(mul(plus(s(s(s(s(o)))),s(s(s(s(s(s(o))))))),s(s(s(s(s(o)))))),s(s(s(s(s(s(s(s(s(o)))))))))) = mul(mul(mul(s(s(s(s(s(o))))),s(s(s(s(s(s(s(s(s(o)))))))))),s(s(s(s(s(o)))))),s(s(o)))).