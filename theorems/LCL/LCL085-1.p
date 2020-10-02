%--------------------------------------------------------------------------
% File     : LCL085-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implicational propositional)
% Problem  : IC-5 depends on the 1st Lukasiewicz axiom
% Version  : [McC92] axioms.
% English  : Axiomatisations of the Implicational propositional calculus
%            are {IC-2,IC-3,IC-4} by Tarski-Bernays and single Lukasiewicz
%            axioms. Show that IC-5 depends on the first Lukasiewicz
%            axiom.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : IC-68 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.33 v6.1.0, 0.57 v6.0.0, 0.33 v5.5.0, 0.56 v5.4.0, 0.61 v5.3.0, 0.70 v5.2.0, 0.46 v5.1.0, 0.50 v5.0.0, 0.47 v4.0.1, 0.14 v3.4.0, 0.00 v3.2.0, 0.33 v2.7.0, 0.50 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.29 v2.3.0, 0.43 v2.2.1, 0.89 v2.1.0, 1.00 v2.0.0
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

cnf(prove_ic_5,negated_conjecture,
    ( ~ is_a_theorem(implies(a,implies(implies(a,b),b))) )).

%--------------------------------------------------------------------------
