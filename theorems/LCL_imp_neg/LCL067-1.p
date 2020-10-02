%--------------------------------------------------------------------------
% File     : LCL067-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-1 depends on the second Lukasiewicz system
% Version  : [McC92] axioms.
% English  : Axiomatisations of the Implication/Negation 2 valued
%            sentential calculus are {CN-1,CN-2,CN-3} by Lukasiewicz,
%            {CN-18,CN-21,CN-35,CN-39,CN-39,CN-40,CN-46} by Frege,
%            {CN-3,CN-18,CN-21,CN-22,CN-30,CN-54} by Hilbert, {CN-18,
%            CN-35,CN-49} by Church, {CN-19,CN-37,CN-59} by Lukasiewicz,
%            {CN-19,CN-37,CN-60} by Wos, and the single Meredith axiom.
%            Show that CN-1 depends on the second Lukasiewicz system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : CN-28 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.36 v6.0.0, 0.11 v5.5.0, 0.25 v5.4.0, 0.39 v5.3.0, 0.50 v5.2.0, 0.31 v5.0.0, 0.33 v4.1.0, 0.40 v4.0.1, 0.14 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.38 v2.6.0, 0.14 v2.4.0, 0.29 v2.3.0, 0.29 v2.2.1, 0.56 v2.2.0, 0.67 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :   11 (   2 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_19,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Z),implies(Y,Z))) )).

cnf(cn_37,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Z),implies(not(X),Z))) )).

cnf(cn_59,axiom,
    ( is_a_theorem(implies(implies(not(X),Z),implies(implies(Y,Z),implies(implies(X,Y),Z)))) )).

cnf(prove_cn_1,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(implies(b,c),implies(a,c)))) )).

%--------------------------------------------------------------------------
