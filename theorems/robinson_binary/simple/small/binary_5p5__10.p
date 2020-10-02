%theorem: plus(5,5) = 10
fof(zeroSuccessor,axiom, ! [X, Y]: (0 != b(X, Y))).
fof(oneSuccessor,axiom, ! [X, Y]: (1 != b(X, Y))).
fof(differentSuccessors,axiom, ! [X1, Y1, X2, Y2]: (b(X1, Y1) != b(X2, Y2) | (X1 = X2 & Y1 = Y2))).
fof(predecessor, axiom, ! [X]: (X = 0 | X = 1 | ? [Y,Z]:  b(Y,Z) = X)).
fof(additionZero,axiom, ! [X]: (plus(X, 0) = X)).
fof(additionOne1,axiom, plus(0, 1) = 1).
fof(additionOne2,axiom, plus(1, 1) = b(0,1)).
fof(additionOne3,axiom, ! [X]: (plus(b(0,X),1) = b(1,X))).
fof(additionOne4,axiom, ! [X]: (plus(b(1,X),1) = b(0,plus(X,1)))).
fof(additionMore1,axiom, ! [X,Y]: (plus(0,b(X,Y)) = b(X,Y))).
fof(additionMore2,axiom, ! [X,Y]: (plus(1,b(X,Y)) = plus(b(X,Y), 1))).
fof(additionMore2,axiom, ! [X1,Y1,X2,Y2]: (plus(b(X1,Y1),b(X2,Y2)) = plus(b(X1,plus(Y1,Y2)),X2))).
fof(multiplicationZero1,axiom, ! [X]: (mul(X,0) = 0)).
fof(multiplicationZero2,axiom, ! [X]: (mul(0,X) = 0)).
fof(multiplicationOne1,axiom, ! [X]: (mul(X,1) = X)).
fof(multiplicationOne2,axiom, ! [X]: (mul(1,X) = X)).
fof(multiplicationMore,axiom, ! [X1, Y1, X2, Y2]: (mul(b(X1, Y1), b(X2, Y2)) = plus(plus(plus(b(0,b(0,mul(Y1, Y2))),  b(0, mul(Y1, X2))), b(0, mul(X1, Y2))), mul(X1, X2)))).
fof(myformula, conjecture, plus(b(1,b(0,1)),b(1,b(0,1))) = b(0,b(1,b(0,1)))).