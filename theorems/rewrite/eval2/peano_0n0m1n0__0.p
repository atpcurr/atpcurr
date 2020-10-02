%theorem: neg(mul(neg(0,0),1),0) = 0
cnf(zeroSuccessor,axiom,(o != s(X))).
cnf(differentSuccessors,axiom,(s(X) != s(Y) | X = Y)).
cnf(additionZero,axiom,(plus(X,o) = X)).
cnf(additionSuccessor,axiom,(plus(X,s(Y)) = s(plus(X,Y)))).
cnf(multiplicationZero,axiom,(mul(X,o) = o)).
cnf(multiplicationSuccessor,axiom,(mul(X,s(Y)) = plus(mul(X,Y),X))).
cnf(expZero,axiom,(exp(X,o) = s(o))).
cnf(expSuccessor,axiom,(exp(X,s(Y)) = mul(exp(X,Y),X))).
%cnf(negZero,axiom,(neg(X,o) = X)).
%cnf(negSuccessor,axiom,(neg(s(X), s(Y)) = neg(X, Y))).
cnf(neg,axiom,((neg(X,Y) = Z) | (plus(Z,Y) != X))).
%cnf(divZero,axiom,(div(o,X) = o)).
%cnf(divSuccessor,axiom,((div(X,Y) = s(Z)) | (div(neg(X,Y),Y) != Z))).
cnf(div,axiom,((div(X,s(Y)) = Z) | (mul(Z,s(Y)) != X))).
cnf(log,axiom,((log(X,Y) = Z) | (exp(Y,Z) != X))).
cnf(myformula, negated_conjecture, neg(mul(neg(o,o),s(o)),o) != o).