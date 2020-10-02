%--------------------------------------------------------------------------
% File     : LCL083-2 : TPTP v7.3.0. Bugfixed v1.2.0.
% Domain   : Logic Calculi (Implicational propositional)
% Problem  : IC-3 depends on the 1st Lukasiewicz axiom
% Version  : [ANL] axioms : Augmented.
% English  : Axiomatisations of the Implicational propositional calculus
%            are {IC-2,IC-3,IC-4} by Tarski-Bernays and single Lukasiewicz
%            axioms. Show that IC-3 depends on the first Lukasiewicz
%            axiom.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [Pfe88] Pfenning (1988), Single Axioms in the Implicational Pr
% Source   : [Pfe88]
% Names    : IP1 [Pfe88]
%          : ls4 [SETHEO]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.12 v5.4.0, 0.17 v5.3.0, 0.20 v5.2.0, 0.08 v5.1.0, 0.19 v5.0.0, 0.27 v4.1.0, 0.20 v4.0.1, 0.00 v2.7.0, 0.12 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.17 v2.1.0, 0.33 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 non-Horn;   3 unit;   2 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   2 constant; 0-2 arity)
%            Number of variables   :    7 (   2 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : Supplies IC-1 as an extra axiom
% Bugfixes : v1.2.0 - Clause ic_1 fixed.
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(ic_JLukasiewicz,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Z),implies(implies(Z,X),implies(U,X)))) )).

cnf(ic_1,axiom,
    ( is_a_theorem(implies(X,X)) )).

cnf(prove_ic_3,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(a,b),a),a)) )).

%--------------------------------------------------------------------------
