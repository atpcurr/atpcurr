fof(sxNeqZero, axiom, ! [X]: ~(s(X) = o)).
fof(successorExists, axiom, ! [X]: ((X != o) => (? [Y]: (s(Y) = X)))).
fof(sameSuccessor, axiom, ! [X,Y]: (s(X) = s(Y)) => (X = Y)).
fof(additionZero, axiom, ! [X]: sum(X, o) = X).
fof(addition, axiom, ! [X, Y]: sum(X, s(Y)) = s(sum(X, Y))).
fof(multiplicationZero, axiom, ! [X]: prod(X, o) = o).
fof(multiplication, axiom, ! [X, Y]: prod(X, s(Y)) = sum(prod(X, Y), X)).
fof(fourTimesFive, conjecture, prod(s(s(s(s(o)))), s(s(s(s(s(o)))))) = s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(o))))))))))))))))))))).
