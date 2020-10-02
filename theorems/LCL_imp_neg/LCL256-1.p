%--------------------------------------------------------------------------
% File     : LCL256-1 : TPTP v7.3.0. Released v1.1.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : A formula that can be derived from the Lukasiewicz system
% Version  : [TPTP] axioms.
% English  : Axiomatisations of the Implication/Negation 2 valued
%            sentential calculus are {CN-1,CN-2,CN-3} by Lukasiewicz,
%            {CN-18,CN-21,CN-35,CN-39,CN-39,CN-40,CN-46} by Frege,
%            {CN-3,CN-18,CN-21,CN-22,CN-30,CN-54} by Hilbert, {CN-18,
%            CN-35,CN-49} by Church, {CN-19,CN-37,CN-59} by Lukasiewicz,
%            {CN-19,CN-37,CN-60} by Wos, and the single Meredith axiom.
%            Show that not(not(p -> p)) can be derived from the short
%            Lukasiewicz system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.14 v6.0.0, 0.00 v5.5.0, 0.19 v5.4.0, 0.22 v5.3.0, 0.30 v5.2.0, 0.15 v5.1.0, 0.25 v5.0.0, 0.27 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.25 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :    8 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : Suggested by Theodor Yemenis in email to Geoff Sutcliffe
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_1,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(cn_2,axiom,
    ( is_a_theorem(implies(implies(not(X),X),X)) )).

cnf(cn_3,axiom,
    ( is_a_theorem(implies(X,implies(not(X),Y))) )).

cnf(prove_not_not_implies,negated_conjecture,
    ( ~ is_a_theorem(not(not(implies(p,p)))) )).

%--------------------------------------------------------------------------
