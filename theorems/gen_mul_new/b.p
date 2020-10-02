fof(additionZero, axiom, ! [X]: sum(X, o) = X).
fof(addition, axiom, ! [X, Y]: sum(X, s(Y)) = s(sum(X, Y))).
fof(multiplicationZero, axiom, ! [X]: prod(X, o) = o).
fof(multiplication, axiom, ! [X, Y]: prod(X, s(Y)) = sum(prod(X, Y), X)).
fof(computeSquare, conjecture, prod(s(o), s(s(o))) = s(s(o))).
