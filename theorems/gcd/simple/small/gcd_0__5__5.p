%theorem: gcd(0,5) = 5
fof(bit0, axiom, ![N]: (bit0(N) = plus(N,N))).
fof(bit1, axiom, ![N]: (bit1(N) = plus(bit1(o), bit0(N)))).
fof(zerosuccessor1, axiom, ![N]: (o != bit1(N))).
fof(zerosuccessor2, axiom, o = bit0(o)).
fof(diffSuccessor0, axiom, ![M,N]: ((bit0(M)=bit0(N)) => M=N)).
fof(diffSuccessor1, axiom, ![M,N]: ((bit1(M)=bit1(N)) => M=N)).
fof(addZero1, axiom, ![N]: (plus(o,N)=N)).
fof(addZero2, axiom, ![N]: (plus(N,o)=N)).
fof(add1, axiom, ![M,N]: (plus(bit0(M),bit0(N)) = bit0(plus(M,N)))).
fof(add2, axiom, ![M,N]: (plus(bit0(M),bit1(N)) = bit1(plus(M,N)))).
fof(add3, axiom, ![M,N]: (plus(bit1(M),bit0(N)) = bit1(plus(M,N)))).
fof(add4, axiom, ![M,N]: (plus(bit1(M),bit1(N)) = bit0(plus(bit1(o),plus(M,N))))).
fof(mulZero1, axiom, ![N]: (mul(o,N)=o)).
fof(mulZero2, axiom, ![N]: (mul(N,o)=o)).
fof(mul1, axiom, ![M,N]: (mul(bit0(M),bit0(N)) = bit0(bit0(mul(M,N))))).
fof(mul2, axiom, ![M,N]: (mul(bit0(M),bit1(N)) = plus(bit0(M), bit0(bit0(mul(M,N)))))).
fof(mul3, axiom, ![M,N]: (mul(bit1(M),bit0(N)) = plus(bit0(N), bit0(bit0(mul(M,N)))))).
fof(mul4, axiom, ![M,N]: (mul(bit1(M),bit1(N)) = plus(bit1(M), plus(bit0(N), bit0(bit0(mul(M,N))))))).
fof(div,axiom, ! [M,N]: (divides(M,N) <=> (? [K] : (mul(K,M) = N)))).
fof(gcd,axiom, ! [M,N,D] : (gcd(M,N) = D <=> ((divides(D,M) & divides(D,N)) & (! [E] : ((divides(E,M) & divides(E,N)) => divides(E,D)))))).
fof(myformula, conjecture, gcd(o,bit1(bit0(bit1(o)))) = bit1(bit0(bit1(o)))).