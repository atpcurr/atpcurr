%--------------------------------------------------------------------------
% File     : LCL029-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Falsehood 2 valued sentential)
% Problem  : C0-5 depends on the Tarski-Bernays system
% Version  : [McC92] axioms.
% English  : Axiomatisations for the Implication/Falsehood 2 valued
%            sentential calculus are {C0-1,C0-2,C0-3,C0-4}
%            by Tarski-Bernays, {C0-2,C0-5,C0-6} by Church, and the single
%            Meredith axioms. Show that C0-5 can be derived from the
%            Tarski-Bernays system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : C0-41 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.12 v5.4.0, 0.17 v5.3.0, 0.25 v5.2.0, 0.15 v5.1.0, 0.12 v5.0.0, 0.07 v4.1.0, 0.13 v4.0.1, 0.00 v2.7.0, 0.25 v2.6.0, 0.00 v2.1.0, 0.13 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   2 constant; 0-2 arity)
%            Number of variables   :   10 (   3 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(c0_1,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(c0_2,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(c0_3,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),X),X)) )).

cnf(c0_4,axiom,
    ( is_a_theorem(implies(falsehood,X)) )).

cnf(prove_c0_5,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(a,falsehood),falsehood),a)) )).

%--------------------------------------------------------------------------
