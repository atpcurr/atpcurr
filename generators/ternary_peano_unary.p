fof(zeroSuccessor,axiom, ! [X]: (o != s(X))).
fof(succOrZero, axiom, ! [Y]: ((Y=o) | (?[X]: Y=s(X)))).
fof(differentSuccessors,axiom, ! [X,Y]: (s(X) != s(Y) | X = Y)).
fof(additionZero,axiom, ! [X]: plus(X,o,X)).
fof(additionSuccessor,axiom, ! [X,Y,Z]: (plus(X,s(Y),s(Z)) <= plus(X,Y,Z))).
fof(multiplicationZero,axiom, ! [X]: mul(X,o,o)).
fof(multiplicationSuccessor,axiom, ! [X,Y,A,B]: (mul(X,s(Y),A) | ~mul(X,Y,B) | ~plus(B,X,A))).
