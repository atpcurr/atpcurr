%--------------------------------------------------------------------------
% File     : LCL083-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implicational propositional)
% Problem  : IC-3 depends on the 1st Lukasiewicz axiom
% Version  : [McC92] axioms.
% English  : Axiomatisations of the Implicational propositional calculus
%            are {IC-2,IC-3,IC-4} by Tarski-Bernays and single Lukasiewicz
%            axioms. Show that IC-3 depends on the first Lukasiewicz
%            axiom.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [Pfe88] Pfenning (1988), Single Axioms in the Implicational Pr
%          : [WW+90] Wos et al. (1990), Automated Reasoning Contributes to
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : P1 [Pfe88]
%          : IC-1.2 [WW+90]
%          : IC-66 [MW92]
%          : ls3 [SETHEO]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.29 v6.0.0, 0.00 v5.5.0, 0.19 v5.4.0, 0.22 v5.3.0, 0.30 v5.2.0, 0.15 v5.1.0, 0.25 v5.0.0, 0.27 v4.0.1, 0.00 v2.7.0, 0.12 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   2 constant; 0-2 arity)
%            Number of variables   :    6 (   2 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(ic_JLukasiewicz,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Z),implies(implies(Z,X),implies(U,X)))) )).

cnf(prove_ic_3,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(a,b),a),a)) )).

%--------------------------------------------------------------------------
