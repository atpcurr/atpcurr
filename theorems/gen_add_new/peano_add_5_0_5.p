% cnf(zeroSuccessor,axiom,(o != s(X))).
% cnf(differentSuccessors,axiom,(s(X) != s(Y) | X = Y)).
cnf(additionZero,axiom,(plus(X,o) = X)).
cnf(additionSuccessor,axiom,(plus(X,s(Y)) = s(plus(X,Y)))).
cnf(multiplicationZero,axiom,(mul(X,o) = o)).
cnf(multiplicationSuccessor,axiom,(mul(X,s(Y)) = plus(mul(X,Y),X))).
% cnf(predecessorSuccessor,axiom,(X = o | s(pred(X)) = X)).
cnf(computeSquare, negated_conjecture, plus(s(s(s(s(s(o))))), o) != s(s(s(s(s(o)))))).