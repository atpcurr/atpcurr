%------------------------------------------------------------------------------
% File     : PUZ056-2.020 : TPTP v7.3.0. Released v3.5.0.
% Domain   : Puzzles
% Problem  : Towers of Hanoi k=20
% Version  : Especial.
% English  : Each instance encodes Tower of Hanoi with n discs as a
%            reachability problem.

% Refs     : [NV07]  Navarro (2007), Email to Geoff Sutcliffe
% Source   : [NV07]
% Names    : hanoi-k20 [NV07a]

% Status   : Unsatisfiable
% Rating   : 1.00 v6.2.0, 0.88 v6.1.0, 1.00 v6.0.0, 0.75 v5.5.0, 0.60 v5.4.0, 1.00 v3.5.0
% Syntax   : Number of clauses     :   31 (   0 non-Horn;  11 unit;  30 RR)
%            Number of atoms       :  431 (   0 equality)
%            Maximal clause size   :   40 (  14 average)
%            Number of predicates  :    2 (   0 propositional; 2-20 arity)
%            Number of functors    :    3 (   3 constant; 0-0 arity)
%            Number of variables   :  420 (   2 singleton)
%            Maximal term depth    :    1 (   1 average)
% SPC      : CNF_UNS_EPR_NEQ_HRN

% Comments : k >= 13 not solved by any prover in less than 1 hr. (2007)
%------------------------------------------------------------------------------
cnf(rule1,axiom,
    ( ~ p(I,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | p(J,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule2,axiom,
    ( ~ p(T0,I,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | p(T0,J,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule3,axiom,
    ( ~ p(T0,T1,I,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | p(T0,T1,J,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule4,axiom,
    ( ~ p(T0,T1,T2,I,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | p(T0,T1,T2,J,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule5,axiom,
    ( ~ p(T0,T1,T2,T3,I,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | p(T0,T1,T2,T3,J,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule6,axiom,
    ( ~ p(T0,T1,T2,T3,T4,I,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | p(T0,T1,T2,T3,T4,J,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule7,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,I,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | p(T0,T1,T2,T3,T4,T5,J,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule8,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,I,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | p(T0,T1,T2,T3,T4,T5,T6,J,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule9,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,I,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,J,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule10,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,I,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,J,T10,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule11,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,I,T11,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,J,T11,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule12,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,I,T12,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,J,T12,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule13,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,I,T13,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,J,T13,T14,T15,T16,T17,T18,T19) )).

cnf(rule14,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,I,T14,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,J,T14,T15,T16,T17,T18,T19) )).

cnf(rule15,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,I,T15,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,J,T15,T16,T17,T18,T19) )).

cnf(rule16,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,I,T16,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | ~ neq(T14,I)
    | ~ neq(T14,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,J,T16,T17,T18,T19) )).

cnf(rule17,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,I,T17,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | ~ neq(T14,I)
    | ~ neq(T14,J)
    | ~ neq(T15,I)
    | ~ neq(T15,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,J,T17,T18,T19) )).

cnf(rule18,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,I,T18,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | ~ neq(T14,I)
    | ~ neq(T14,J)
    | ~ neq(T15,I)
    | ~ neq(T15,J)
    | ~ neq(T16,I)
    | ~ neq(T16,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,J,T18,T19) )).

cnf(rule19,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,I,T19)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | ~ neq(T14,I)
    | ~ neq(T14,J)
    | ~ neq(T15,I)
    | ~ neq(T15,J)
    | ~ neq(T16,I)
    | ~ neq(T16,J)
    | ~ neq(T17,I)
    | ~ neq(T17,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,J,T19) )).

cnf(rule20,axiom,
    ( ~ p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,I)
    | ~ neq(T0,I)
    | ~ neq(T0,J)
    | ~ neq(T1,I)
    | ~ neq(T1,J)
    | ~ neq(T2,I)
    | ~ neq(T2,J)
    | ~ neq(T3,I)
    | ~ neq(T3,J)
    | ~ neq(T4,I)
    | ~ neq(T4,J)
    | ~ neq(T5,I)
    | ~ neq(T5,J)
    | ~ neq(T6,I)
    | ~ neq(T6,J)
    | ~ neq(T7,I)
    | ~ neq(T7,J)
    | ~ neq(T8,I)
    | ~ neq(T8,J)
    | ~ neq(T9,I)
    | ~ neq(T9,J)
    | ~ neq(T10,I)
    | ~ neq(T10,J)
    | ~ neq(T11,I)
    | ~ neq(T11,J)
    | ~ neq(T12,I)
    | ~ neq(T12,J)
    | ~ neq(T13,I)
    | ~ neq(T13,J)
    | ~ neq(T14,I)
    | ~ neq(T14,J)
    | ~ neq(T15,I)
    | ~ neq(T15,J)
    | ~ neq(T16,I)
    | ~ neq(T16,J)
    | ~ neq(T17,I)
    | ~ neq(T17,J)
    | ~ neq(T18,I)
    | ~ neq(T18,J)
    | p(T0,T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12,T13,T14,T15,T16,T17,T18,J) )).

cnf(neq1,axiom,
    ( ~ neq(s0,s0) )).

cnf(neq2,axiom,
    ( neq(s0,s1) )).

cnf(neq3,axiom,
    ( neq(s0,s2) )).

cnf(neq4,axiom,
    ( neq(s1,s0) )).

cnf(neq5,axiom,
    ( ~ neq(s1,s1) )).

cnf(neq6,axiom,
    ( neq(s1,s2) )).

cnf(neq7,axiom,
    ( neq(s2,s0) )).

cnf(neq8,axiom,
    ( neq(s2,s1) )).

cnf(neq9,axiom,
    ( ~ neq(s2,s2) )).

cnf(init,axiom,
    ( p(s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0,s0) )).

cnf(goal,negated_conjecture,
    ( ~ p(s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s2,s0,s0,s0) )).

%------------------------------------------------------------------------------
