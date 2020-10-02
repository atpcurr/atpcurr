%--------------------------------------------------------------------------
% File     : LCL376-1 : TPTP v7.3.0. Released v2.3.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-33 depends on the Lukasiewicz system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the Implication/Negation 2 valued
%            sentential calculus is {CN-1,CN-2,CN-3} by Lukasiewicz.
%            Show that CN-33 depends on the Lukasiewicz system.

% Refs     : [Wos96] Wos (1996), Combining Resonance with Heat
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [Wos96]
% Names    : thesis_33 [Wos96]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.4.0, 0.50 v6.2.0, 0.67 v6.1.0, 0.86 v6.0.0, 0.78 v5.5.0, 0.88 v5.4.0, 0.89 v5.3.0, 0.90 v5.2.0, 0.85 v5.1.0, 0.88 v5.0.0, 0.87 v4.1.0, 0.80 v4.0.1, 0.71 v4.0.0, 0.57 v3.4.0, 0.40 v3.3.0, 0.00 v3.1.0, 0.50 v2.7.0, 0.75 v2.6.0, 0.57 v2.4.0, 0.75 v2.3.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    6 (   4 constant; 0-2 arity)
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

cnf(prove_cn_33,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(x,y),implies(implies(y,implies(z,implies(x,u))),implies(z,implies(x,u))))) )).

%--------------------------------------------------------------------------
