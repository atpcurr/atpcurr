%------------------------------------------------------------------------------
% File     : LCL927-1 : TPTP v7.3.0. Released v6.4.0.
% Domain   : Logic Calculi (Postive sential logic)
% Problem  : AxK and AxC in TW+ [AxL,AxTO] + (Resid)
% Version  : [Sla02] axioms.
% English  :

% Refs     : [Sla02] Slaney (2002), More Proofs of an Axiom of Lukasiewicz
% Source   : [Sla02]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.50 v7.3.0, 0.75 v6.4.0
% Syntax   : Number of clauses     :    7 (   0 non-Horn;   3 unit;   4 RR)
%            Number of atoms       :   12 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :   18 (   0 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%------------------------------------------------------------------------------
cnf(modus_ponens,axiom,
    ( ~ p(i(A,B))
    | ~ p(A)
    | p(B) )).

cnf(resid1,axiom,
    ( ~ p(i(f(A,B),C))
    | p(i(A,i(B,C))) )).

cnf(resid2,axiom,
    ( p(i(f(A,B),C))
    | ~ p(i(A,i(B,C))) )).

cnf(axBp,axiom,
    ( p(i(i(A,B),i(i(B,C),i(A,C)))) )).

cnf(axL,axiom,
    ( p(i(i(i(X,Y),Y),i(i(Y,X),X))) )).

cnf(axTO,axiom,
    ( p(i(i(i(X,Y),i(Y,X)),i(Y,X))) )).

cnf(axK_axC,negated_conjecture,
    ( ~ p(i(c1,i(c2,c1)))
    | ~ p(i(i(A,i(B,C)),i(B,i(A,C)))) )).

%------------------------------------------------------------------------------
