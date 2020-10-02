%--------------------------------------------------------------------------
% File     : LCL073-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-1 depends on the single Merideth axiom
% Version  : [McC92] axioms.
% English  : Axiomatisations of the Implication/Negation 2 valued
%            sentential calculus are {CN-1,CN-2,CN-3} by Lukasiewicz,
%            {CN-18,CN-21,CN-35,CN-39,CN-39,CN-40,CN-46} by Frege,
%            {CN-3,CN-18,CN-21,CN-22,CN-30,CN-54} by Hilbert, {CN-18,
%            CN-35,CN-49} by Church, {CN-19,CN-37,CN-59} by Lukasiewicz,
%            {CN-19,CN-37,CN-60} by Wos, and the single Meredith axiom.
%            Show that CN-1 depends on the single Meredith axiom.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : CN-34 [MW92]

% Status   : Unknown
% Rating   : 1.00 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :    7 (   1 singleton)
%            Maximal term depth    :    7 (   3 average)
% SPC      : CNF_UNK_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(cn_CAMerideth,axiom,
    ( is_a_theorem(implies(implies(implies(implies(implies(X,Y),implies(not(Z),not(U))),Z),V),implies(implies(V,X),implies(U,X)))) )).

cnf(prove_cn_1,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(implies(b,c),implies(a,c)))) )).

%--------------------------------------------------------------------------
