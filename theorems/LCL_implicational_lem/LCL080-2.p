%--------------------------------------------------------------------------
% File     : LCL080-2 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implicational propositional)
% Problem  : The 1st Lukasiewicz axiom depends on Tarski-Bernays system
% Version  : [TPTP] axioms : Augmented.
% English  : Axiomatisations of the Implicational propositional calculus
%            are {IC-2,IC-3,IC-4} by Tarski-Bernays and Lukasiewicz
%            axioms. Show that the 1st Lukasiewicz axiom depends on the
%            Tarski-Bernays system.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v6.2.0, 0.17 v6.1.0, 0.14 v6.0.0, 0.22 v5.5.0, 0.06 v5.4.0, 0.11 v5.3.0, 0.25 v5.2.0, 0.15 v5.1.0, 0.12 v5.0.0, 0.20 v4.1.0, 0.13 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.25 v2.6.0, 0.14 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.63 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :   10 (   2 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : IC-1 is supplied as an extra axiom.
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(ic_1,axiom,
    ( is_a_theorem(implies(X,X)) )).

cnf(ic_2,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(ic_3,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),X),X)) )).

cnf(ic_4,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(prove_ic_JLukasiewicz,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(a,b),c),implies(implies(c,a),implies(e,a)))) )).

%--------------------------------------------------------------------------
