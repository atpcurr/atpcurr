%------------------------------------------------------------------------------
% File     : LCL875-1 : TPTP v7.3.0. Bugfixed v5.5.0.
% Domain   : Logic Calculi
% Problem  : The Rezus formula
% Version  : [Wos10] axioms.
% English  : 

% Refs     : [Wos10] Wos (2010), Deriving a Complex Formula from Simple Axi
% Source   : [Wos10]
% Names    : 

% Status   : Unsatisfiable
% Rating   : 0.50 v6.1.0, 0.71 v6.0.0, 0.56 v5.5.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :   24 (  23 constant; 0-2 arity)
%            Number of variables   :   11 (   0 singleton)
%            Maximal term depth    :   13 (   4 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
% Bugfixes : v5.5.0 - Fixed prove_rezus to use Skolem constants.
%------------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

%----B
cnf(b,axiom,
    ( is_a_theorem(implies(implies(A,B),implies(implies(C,A),implies(C,B)))) )).

%----C
cnf(c,axiom,
    ( is_a_theorem(implies(implies(A,implies(B,C)),implies(B,implies(A,C)))) )).

%----I
cnf(i,axiom,
    ( is_a_theorem(implies(A,A)) )).

%----W
cnf(w,axiom,
    ( is_a_theorem(implies(implies(U,implies(U,V)),implies(U,V))) )).

%----Denial of Rezus formula
cnf(prove_rezus,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(x,implies(implies(implies(y,y),implies(implies(z,z),implies(implies(u,u),implies(implies(v,v),implies(x,w))))),w)),implies(implies(implies(implies(implies(v6,v7),implies(implies(v7,v8),implies(v6,v8))),implies(implies(implies(implies(implies(v9,implies(v9,v10)),implies(v9,v10)),implies(implies(implies(v11,v12),implies(implies(v12,v13),implies(v11,v13))),v14)),v14),v15)),v15),implies(implies(v16,implies(implies(implies(v17,v17),implies(implies(v18,v18),implies(implies(v19,v19),implies(implies(v20,v20),implies(v16,v21))))),v21)),v22))),v22)) )).

%------------------------------------------------------------------------------
