%--------------------------------------------------------------------------
% File     : LCL094-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implicational propositional)
% Problem  : IC-5 depends on the 4th Lukasiewicz axiom
% Version  : [TPTP] axioms.
% English  : Axiomatisations of the Implicational propositional calculus
%            are {IC-2,IC-3,IC-4} by Tarski-Bernays and single Lukasiewicz
%            axioms.Show that IC-5 depends on the fourth Lukasiewicz
%            axiom.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [Pfe88] Pfenning (1988), Single Axioms in the Implicational Pr
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.14 v6.0.0, 0.00 v5.5.0, 0.19 v5.4.0, 0.22 v5.3.0, 0.25 v5.2.0, 0.15 v5.1.0, 0.25 v5.0.0, 0.33 v4.1.0, 0.27 v4.0.1, 0.00 v2.7.0, 0.12 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.44 v2.1.0, 0.50 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   2 constant; 0-2 arity)
%            Number of variables   :    7 (   2 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(ic_JLukasiewicz_4,axiom,
    ( is_a_theorem(implies(implies(implies(P,Q),implies(R,S)),implies(T,implies(implies(S,P),implies(R,P))))) )).

cnf(prove_ic_5,negated_conjecture,
    ( ~ is_a_theorem(implies(a,implies(implies(a,b),b))) )).

%--------------------------------------------------------------------------
