%--------------------------------------------------------------------------
% File     : LCL381-1 : TPTP v7.3.0. Released v2.3.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-42 depends on the Lukasiewicz system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the Implication/Negation 2 valued
%            sentential calculus is {CN-1,CN-2,CN-3} by Lukasiewicz.
%            Show that CN-42 depends on the Lukasiewicz system.

% Refs     : [Wos96] Wos (1996), Combining Resonance with Heat
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [Wos96]
% Names    : thesis_42 [Wos96]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.14 v6.0.0, 0.00 v5.5.0, 0.19 v5.4.0, 0.28 v5.3.0, 0.30 v5.2.0, 0.15 v5.1.0, 0.25 v5.0.0, 0.20 v4.1.0, 0.27 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.25 v2.6.0, 0.29 v2.5.0, 0.00 v2.3.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :    8 (   1 singleton)
%            Maximal term depth    :    6 (   3 average)
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

cnf(prove_cn_42,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(not(not(x)),y),z),implies(implies(x,y),z))) )).

%--------------------------------------------------------------------------
