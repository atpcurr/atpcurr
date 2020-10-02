%theorem: mul(5,0) = 0
fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: (plus(X,o) = X)).
fof(additionSuccessor,axiom, ! [X,Y]: (plus(X,s(Y)) = s(plus(X,Y)))).
fof(multiplicationZero,axiom, ! [X]: (mul(X,o) = o)).
fof(multiplicationSuccessor,axiom, ! [X,Y]: (mul(X,s(Y)) = plus(mul(X,Y),X))).
fof(expZero,axiom, ! [X]: (exp(X,o) = s(o))).
fof(expSuccessor,axiom, ![X,Y]: (exp(X,s(Y)) = mul(exp(X,Y),X))).
fof(neg,axiom, ! [Y,Z]: neg(plus(Z,Y),Y) = Z).
fof(div,axiom, ! [Y,Z]:  div(mul(Z,s(Y)),s(Y)) = Z).
fof(log,axiom, ! [Y,Z]:  log(exp(s(s(Y)),Z),s(s(Y))) = Z).
cnf(myformula, negated_conjecture, mul(s(s(s(s(s(o))))),o) != o).