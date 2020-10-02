%--------------------------------------------------------------------------
% File     : LCL039-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued modal)
% Problem  : A theorem from Morgan
% Version  : [Pel86] axioms.
% English  : An axiomatisation of the Implication/Negation 2 valued
%            sentential calculus is {CN-18,CN-35,CN-49} by Church. This
%            can be extended to the  modal logic T by the addition
%            of three axioms for the modal operators. This problem proves
%            a simple result of T.

% Refs     : [Mor84] Morgan (1984), Logic Problems
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [Pel86]
% Names    : Pelletier 69 [Pel86]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.25 v6.2.0, 0.17 v6.1.0, 0.29 v6.0.0, 0.11 v5.5.0, 0.31 v5.4.0, 0.28 v5.3.0, 0.35 v5.2.0, 0.15 v5.1.0, 0.31 v5.0.0, 0.20 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.38 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.63 v2.0.0
% Syntax   : Number of clauses     :    8 (   0 non-Horn;   6 unit;   3 RR)
%            Number of atoms       :   11 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   1 constant; 0-2 arity)
%            Number of variables   :   13 (   1 singleton)
%            Maximal term depth    :    5 (   3 average)
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

cnf(cn_49,axiom,
    ( is_a_theorem(implies(implies(not(X),not(Y)),implies(Y,X))) )).

cnf(necessitation1,axiom,
    ( is_a_theorem(implies(necessary(implies(X,Y)),implies(necessary(X),necessary(Y)))) )).

cnf(necessitation2,axiom,
    ( is_a_theorem(implies(necessary(X),X)) )).

cnf(axiom_of_necessitation,axiom,
    ( ~ is_a_theorem(X)
    | is_a_theorem(necessary(X)) )).

cnf(prove_this,negated_conjecture,
    ( ~ is_a_theorem(implies(necessary(a),not(necessary(not(a))))) )).

%--------------------------------------------------------------------------
