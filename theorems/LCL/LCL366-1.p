%--------------------------------------------------------------------------
% File     : LCL366-1 : TPTP v7.3.0. Bugfixed v5.5.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : CN-15 depends on the Lukasiewicz system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the Implication/Negation 2 valued
%            sentential calculus is {CN-1,CN-2,CN-3} by Lukasiewicz.
%            Show that CN-15 depends on the Lukasiewicz system.

% Refs     : [Wos96] Wos (1996), Combining Resonance with Heat
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [Wos96]
% Names    : thesis_15 [Wos96]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.21 v6.0.0, 0.00 v5.5.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :    8 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
% Bugfixes : v5.5.0 - Fixed prove_cn_15 to use Skolem constants.
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

cnf(prove_cn_15,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(not(x),y),implies(implies(y,x),x))) )).

%--------------------------------------------------------------------------
