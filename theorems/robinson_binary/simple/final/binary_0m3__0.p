%theorem: mul(n0,3) = n0
fof(zeroSuccessor,axiom, ! [X, Y]: (n0 != b(X, Y))).
fof(oneSuccessor,axiom, ! [X, Y]: (n1 != b(X, Y))).
fof(differentSuccessors,axiom, ! [X1, Y1, X2, Y2]: (b(X1, Y1) != b(X2, Y2) | (X1 = X2 & Y1 = Y2))).
fof(predecessor, axiom, ! [X]: (X = n0 | X = n1 | ? [Y,Z]:  b(Y,Z) = X)).
fof(additionZero,axiom, ! [X]: (plus(X, n0) = X)).
fof(additionOnen1,axiom, plus(n0, n1) = n1).
fof(additionOne2,axiom, plus(n1, n1) = b(n0,n1)).
fof(additionOne3,axiom, ! [X]: (plus(b(n0,X),n1) = b(n1,X))).
fof(additionOne4,axiom, ! [X]: (plus(b(n1,X),n1) = b(n0,plus(X,n1)))).
fof(additionMoren1,axiom, ! [X,Y]: (plus(n0,b(X,Y)) = b(X,Y))).
fof(additionMore2,axiom, ! [X,Y]: (plus(n1,b(X,Y)) = plus(b(X,Y), n1))).
fof(additionMore2,axiom, ! [X1,Y1,X2,Y2]: (plus(b(X1,Y1),b(X2,Y2)) = plus(b(X1,plus(Y1,Y2)),X2))).
fof(multiplicationZeron1,axiom, ! [X]: (mul(X,n0) = n0)).
fof(multiplicationZero2,axiom, ! [X]: (mul(n0,X) = n0)).
fof(multiplicationOnen1,axiom, ! [X]: (mul(X,n1) = X)).
fof(multiplicationOne2,axiom, ! [X]: (mul(n1,X) = X)).
fof(multiplicationMore,axiom, ! [X1, Y1, X2, Y2]: (mul(b(X1, Y1), b(X2, Y2)) = plus(plus(plus(b(n0,b(n0,mul(Y1, Y2))),  b(n0, mul(Y1, X2))), b(n0, mul(X1, Y2))), mul(X1, X2)))).
fof(myformula, conjecture, mul(n0,b(n1,n1)) = n0).