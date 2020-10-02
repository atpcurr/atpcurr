fof(infact, axiom,
    (r(a,b))
    )
.

fof(ax1, axiom,
    (![X ,Y ] : (r(X,Y)  => ? [Z]: r(Y,Z) )
    )
    )
.


fof(conclude,conjecture,
    (? [U, V, W, X, Y, Z] : (r(U, V) & r(V, W) & r(W, X) & r(X,Y) & r(Y,Z))
    )
    ).
