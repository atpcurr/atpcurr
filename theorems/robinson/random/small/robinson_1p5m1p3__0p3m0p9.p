%theorem: plus(mul(plus(1,5),1),3) = plus(mul(plus(0,3),0),9)
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
fof(myformula, conjecture, plus(mul(plus(s(o),s(s(s(s(s(o)))))),s(o)),s(s(s(o)))) = plus(mul(plus(o,s(s(s(o)))),o),s(s(s(s(s(s(s(s(s(o))))))))))).