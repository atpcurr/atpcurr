%theorem: plus(mul(plus(1,1),1),0) = 2
cnf(zeroSuccessor,axiom,(o != s(X))).
cnf(differentSuccessors,axiom,(s(X) != s(Y) | X = Y)).
cnf(additionZero,axiom,(plus(X,o) = X)).
cnf(additionSuccessor,axiom,(plus(X,s(Y)) = s(plus(X,Y)))).
cnf(multiplicationZero,axiom,(mul(X,o) = o)).
cnf(multiplicationSuccessor,axiom,(mul(X,s(Y)) = plus(mul(X,Y),X))).
cnf(expZero,axiom,(exp(X,o) = s(o))).
cnf(expSuccessor,axiom,(exp(X,s(Y)) = mul(exp(X,Y),X))).
cnf(neg,axiom,neg(plus(Z,Y),Y) = Z).
cnf(div,axiom, div(mul(Z,s(Y)),s(Y)) = Z).
cnf(log,axiom, log(exp(s(s(Y)),Z),s(s(Y))) = Z).
cnf(myformula, negated_conjecture, plus(mul(plus(s(o),s(o)),s(o)),o) != s(s(o))).