%--------------------------------------------------------------------------
% File     : LCL041-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-30 depends on the rest of Hilbert's system
% Version  : [McC92] axioms.
% English  : An early axiomatisation of Implication/Negation 2 valued
%            sentential calculus was {CN-3,CN-18,CN-21,CN-22,CN-30, CN-54}
%            by Hilbert. Show, like Lukasiewicz did, that CN-30 depends
%            on the rest of this axiomatisation.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : CN-2 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    7 (   0 non-Horn;   6 unit;   2 RR)
%            Number of atoms       :    9 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :   14 (   2 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_3,axiom,
    ( is_a_theorem(implies(X,implies(not(X),Y))) )).

cnf(cn_18,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(cn_21,axiom,
    ( is_a_theorem(implies(implies(X,implies(Y,Z)),implies(Y,implies(X,Z)))) )).

cnf(cn_22,axiom,
    ( is_a_theorem(implies(implies(Y,Z),implies(implies(X,Y),implies(X,Z)))) )).

cnf(cn_54,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(not(X),Y),Y))) )).

cnf(prove_cn_30,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,implies(a,b)),implies(a,b))) )).

%--------------------------------------------------------------------------
