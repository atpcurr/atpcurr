fof(additionZero, axiom, ! [X]: sum(X, 0) = X).
fof(addition, axiom, ! [X, Y]: sum(X, s(Y)) = s(sum(X, Y))).
fof(onePlusOne, conjecture, sum(s(0), s(0)) = s(s(0))).
