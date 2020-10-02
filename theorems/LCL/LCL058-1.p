%--------------------------------------------------------------------------
% File     : LCL058-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-46 depends on the Lukasiewicz system
% Version  : [McC92] axioms.
% English  : Axiomatisations of the Implication/Negation 2 valued
%            sentential calculus are {CN-1,CN-2,CN-3} by Lukasiewicz,
%            {CN-18,CN-21,CN-35,CN-39,CN-39,CN-40,CN-46} by Frege,
%            {CN-3,CN-18,CN-21,CN-22,CN-30,CN-54} by Hilbert, {CN-18,
%            CN-35,CN-49} by Church, {CN-19,CN-37,CN-59} by Lukasiewicz,
%            {CN-19,CN-37,CN-60} by Wos, and the single Meredith axiom.
%            Show that CN-46 depends on the short Lukasiewicz system.

% Refs     : [Wos96] Wos (1996), The Power of Combining Resonance with Heat
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : thesis_46 [Wos96]
%          : CN-19 [MW92]
%          : cn19.in [OTTER]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.43 v6.0.0, 0.33 v5.5.0, 0.50 v5.4.0, 0.56 v5.3.0, 0.60 v5.2.0, 0.38 v5.1.0, 0.50 v5.0.0, 0.47 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.38 v2.6.0, 0.29 v2.5.0, 0.14 v2.4.0, 0.00 v2.3.0, 0.29 v2.2.1, 0.78 v2.2.0, 0.89 v2.1.0, 0.88 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :    8 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
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

cnf(prove_cn_46,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(not(b),not(a)))) )).

%--------------------------------------------------------------------------
