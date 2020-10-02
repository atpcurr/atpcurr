fof(bit0, axiom, ![N]: plus(N,N,bit0(N))).
fof(bit1, axiom, ![N]: plus(bit1(o), bit0(N), bit1(N))).
fof(zerosuccessor1, axiom, ![N]: (o != bit1(N))).
fof(zerosuccessor2, axiom, o = bit0(o)).
fof(succOrZero, axiom, ! [Y]: ((Y=o) | (?[X]: (Y=bit1(X) | Y=bit0(X))))).
fof(diffSuccessor0, axiom, ![M,N]: ((bit0(M)=bit0(N)) => M=N)).
fof(diffSuccessor1, axiom, ![M,N]: ((bit1(M)=bit1(N)) => M=N)).
fof(addZero1, axiom, ![N]: plus(o,N,N)).
fof(addZero2, axiom, ![N]: plus(N,o,N)).
fof(add1, axiom, ![M,N,A]: (plus(bit0(M),bit0(N), bit0(A)) <= plus(M,N,A))).
fof(add2, axiom, ![M,N,A]: (plus(bit0(M),bit1(N), bit1(A)) <= plus(M,N,A))).
fof(add3, axiom, ![M,N,A]: (plus(bit1(M),bit0(N), bit1(A)) <= plus(M,N,A))).
fof(add4, axiom, ![M,N,A,B]: (plus(bit1(M),bit1(N), bit0(A)) | ~plus(M,N,B) | ~plus(bit1(o),B,A))).
fof(mulZero1, axiom, ![N]: mul(o,N,o)).
fof(mulZero2, axiom, ![N]: mul(N,o,o)).
fof(mul1, axiom, ![M,N,A]: (mul(bit0(M),bit0(N), bit0(bit0(A))) <= mul(M,N,A))).
fof(mul2, axiom, ![M,N,A,B]: (mul(bit0(M),bit1(N), A) | ~mul(M,N,B) | ~plus(bit0(M),bit0(bit0(B)), A))).
fof(mul3, axiom, ![M,N,A,B]: (mul(bit1(M),bit0(N), A) | ~mul(M,N,B) | ~plus(bit0(N),bit0(bit0(B)), A))).
fof(mul4, axiom, ![M,N,A,B,C]: (mul(bit1(M),bit1(N), A) | ~mul(M,N,B) | ~plus(bit0(N), bit0(bit0(B)), C) | ~plus(bit1(M), C, A))).
