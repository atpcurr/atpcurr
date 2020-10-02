%--------------------------------------------------------------------------
% File     : LCL040-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-21 depends on the rest of Frege's system
% Version  : [McC92] axioms.
% English  : The first axiomatisation of Implication/Negation 2 valued
%            sentential calculus was {CN-18,CN-21,CN-35,CN-39,CN-39,
%            CN-40,CN-46} by Frege. Show, like Lukasiewicz did, that CN-21
%            depends on the rest of this axiomatisation.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : CN-1 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.29 v6.0.0, 0.22 v5.5.0, 0.31 v5.4.0, 0.39 v5.3.0, 0.50 v5.2.0, 0.31 v5.1.0, 0.25 v5.0.0, 0.27 v4.0.1, 0.00 v3.1.0, 0.33 v2.7.0, 0.38 v2.6.0, 0.00 v2.5.0, 0.14 v2.4.0, 0.29 v2.3.0, 0.29 v2.2.1, 0.67 v2.1.0, 0.63 v2.0.0
% Syntax   : Number of clauses     :    7 (   0 non-Horn;   6 unit;   2 RR)
%            Number of atoms       :    9 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :   11 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_18,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(cn_35,axiom,
    ( is_a_theorem(implies(implies(X,implies(Y,Z)),implies(implies(X,Y),implies(X,Z)))) )).

cnf(cn_39,axiom,
    ( is_a_theorem(implies(not(not(X)),X)) )).

cnf(cn_40,axiom,
    ( is_a_theorem(implies(X,not(not(X)))) )).

cnf(cn_46,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(not(Y),not(X)))) )).

cnf(prove_cn_21,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,implies(b,c)),implies(b,implies(a,c)))) )).

%--------------------------------------------------------------------------
