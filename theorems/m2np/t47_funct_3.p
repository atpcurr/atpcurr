fof(t47_funct_3, conjecture,  (! [A] : r1_tarski(k10_xtuple_0(k11_funct_3(A)), k2_zfmisc_1(A, A))) ).
fof(d3_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k10_xtuple_0(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k9_xtuple_0(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d6_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k11_funct_3(A) <=>  (k9_xtuple_0(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=k4_tarski(C, C)) ) ) ) ) ) ) ).
fof(dt_k11_funct_3, axiom,  (! [A] :  (v1_relat_1(k11_funct_3(A)) & v1_funct_1(k11_funct_3(A))) ) ).
fof(t87_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
