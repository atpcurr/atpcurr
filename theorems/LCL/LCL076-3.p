%--------------------------------------------------------------------------
% File     : LCL076-3 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-40 depends on the Church system
% Version  : [ANL] axioms : Augmented.
% English  : Axiomatisations of the Implication/Negation 2 valued
%            sentential calculus are {CN-1,CN-2,CN-3} by Lukasiewicz,
%            {CN-18,CN-21,CN-35,CN-39,CN-39,CN-40,CN-46} by Frege,
%            {CN-3,CN-18,CN-21,CN-22,CN-30,CN-54} by Hilbert, {CN-18,
%            CN-35,CN-49} by Church, {CN-19,CN-37,CN-59} by Lukasiewicz,
%            {CN-19,CN-37,CN-60} by Wos, and the single Meredith axiom.
%            Show that CN-40 depends on the Church system.

% Refs     :
% Source   : [ANL]
% Names    : morgan.four.ver1.in [ANL]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.15 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   4 unit;   3 RR)
%            Number of atoms       :   10 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   12 (   1 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : Transitivity of implies is supplied as a lemma
%          : Contributed to the ANL library by Charles Morgan.
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_18,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(cn_35,axiom,
    ( is_a_theorem(implies(implies(X,implies(Y,Z)),implies(implies(X,Y),implies(X,Z)))) )).

cnf(cn_49,axiom,
    ( is_a_theorem(implies(implies(not(X),not(Y)),implies(Y,X))) )).

cnf(transitivity,axiom,
    ( ~ is_a_theorem(implies(X1,X2))
    | ~ is_a_theorem(implies(X2,X3))
    | is_a_theorem(implies(X1,X3)) )).

cnf(prove_cn_40,negated_conjecture,
    ( ~ is_a_theorem(implies(a,not(not(a)))) )).

%--------------------------------------------------------------------------
