%fof(1, conjecture, ((? [X]: (p => f(X))) & (? [X]: (f(X) => p))) => (? [X]: (p <=> f(X)))).
fof(1, conjecture, ? [X]: ((p & ~f(a)) | (f(b) & ~p) | (p & f(X)) | (~p & ~f(X)))).

