fof(t131_zfmisc_1, conjecture,  (! [A] :  ~ ( ( ~ (v1_xboole_0(A))  &  (v1_zfmisc_1(A) &  (! [B] :  ~ (A=k1_tarski(B)) ) ) ) ) ) ).
fof(d10_zfmisc_1, axiom,  (! [A] :  (v1_zfmisc_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, A) & r2_hidden(C, A))  => B=C) ) ) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
