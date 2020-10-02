%--------------------------------------------------------------------------
% File     : LCL038-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Falsehood 2 valued sentential)
% Problem  : C0-1 depends on a single axiom
% Version  : [McC92] axioms.
% English  : An axiomatisation for the Implication/Falsehood 2 valued
%            sentential calculus is {C0-1,C0-2,C0-3,C0-4}
%            by Tarski-Bernays. Show that C0-1 can be derived from the first
%            Lukasiewicz axiom.

% Refs     : [Luk48] Lukasiewicz (1948), The Shortest Axiom of the Implicat
%          : [Pfe88] Pfenning (1988), Single Axioms in the Implicational Pr
%          : [Ove90] Overbeek (1990), ATP competition announced at CADE-10
%          : [WW+90] Wos et al. (1990), Automated Reasoning Contributes to
%          : [LM92]  Lusk & McCune (1992), Experiments with ROO, a Parallel
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
%          : [Ove93] Overbeek (1993), The CADE-11 Competitions: A Personal
%          : [LM93]  Lusk & McCune (1993), Uniform Strategies: The CADE-11
% Source   : [Ove90]
% Names    : CADE-11 Competition 5 [Ove90]
%          : THEOREM 5 [LM93]
%          : H1 [Pfe88]
%          : IC-1.3 [WW+90]
%          : IC-67 [MW92]
%          : Imp-4 [LM92]
%          : ls5 [SETHEO]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.00 v7.0.0, 0.25 v6.2.0, 0.33 v6.1.0, 0.79 v6.0.0, 0.67 v5.5.0, 0.81 v5.4.0, 0.78 v5.3.0, 0.80 v5.2.0, 0.69 v5.0.0, 0.67 v4.1.0, 0.60 v4.0.1, 0.43 v4.0.0, 0.29 v3.4.0, 0.00 v3.2.0, 0.33 v2.7.0, 0.62 v2.6.0, 0.71 v2.5.0, 0.86 v2.4.0, 1.00 v2.3.0, 0.71 v2.2.1, 0.89 v2.2.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
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

cnf(prove_c0_1,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(implies(b,c),implies(a,c)))) )).

%--------------------------------------------------------------------------
