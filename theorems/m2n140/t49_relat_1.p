fof(t49_relat_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (v1_relat_1(D) =>  (r2_hidden(k4_tarski(A, B), k3_relat_1(D, k4_relat_1(C))) <=>  (r2_hidden(B, C) & r2_hidden(k4_tarski(A, B), D)) ) ) ) ) ) ) ).
fof(d10_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k4_relat_1(A) <=>  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=>  (r2_hidden(C, A) & C=D) ) ) ) ) ) ) ) ).
fof(d8_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (C=k3_relat_1(A, B) <=>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (? [F] :  (r2_hidden(k4_tarski(D, F), A) & r2_hidden(k4_tarski(F, E), B)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(dt_k4_relat_1, axiom,  (! [A] : v1_relat_1(k4_relat_1(A))) ).
