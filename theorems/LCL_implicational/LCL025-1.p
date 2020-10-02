%--------------------------------------------------------------------------
% File     : LCL025-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Falsehood 2 valued sentential)
% Problem  : C0-1 depends on the Church system
% Version  : [McC92] axioms.
% English  : Axiomatisations for the Implication/Falsehood 2 valued
%            sentential calculus are {C0-1,C0-2,C0-3,C0-4}
%            by Tarski-Bernays, {C0-2,C0-5,C0-6} by Church, and the single
%            Meredith axioms. Show that C0-1 can be derived from the
%            Church system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : C0-37 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.4.0, 0.11 v5.3.0, 0.25 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.1.0, 0.13 v4.0.1, 0.00 v2.7.0, 0.12 v2.6.0, 0.14 v2.5.0, 0.00 v2.4.0, 0.00 v2.2.1, 0.11 v2.2.0, 0.22 v2.1.0, 0.13 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :    8 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(c0_2,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(c0_5,axiom,
    ( is_a_theorem(implies(implies(implies(X,falsehood),falsehood),X)) )).

cnf(c0_6,axiom,
    ( is_a_theorem(implies(implies(X,implies(Y,Z)),implies(implies(X,Y),implies(X,Z)))) )).

cnf(prove_c0_1,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(implies(b,c),implies(a,c)))) )).

%--------------------------------------------------------------------------
