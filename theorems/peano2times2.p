fof(sxNeqZero, axiom, ! [X]: ~(s(X) = 0)).
fof(successorExists, axiom, ! [X]: ((X != 0) => (? [Y]: (s(Y) = X)))).
fof(sameSuccessor, axiom, ! [X,Y]: (s(X) = s(Y)) => (X = Y)).
fof(additionZero, axiom, ! [X]: sum(X, 0) = X).
fof(addition, axiom, ! [X, Y]: sum(X, s(Y)) = s(sum(X, Y))).
fof(multiplicationZero, axiom, ! [X]: prod(X, 0) = 0).
fof(multiplication, axiom, ! [X, Y]: prod(X, s(Y)) = sum(prod(X, Y), X)).
fof(twoTimesTwo, conjecture, prod(s(s(0)), s(s(0))) = s(s(s(s(0))))).
