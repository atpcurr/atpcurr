%--------------------------------------------------------------------------
% File     : LCL096-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Left group)
% Problem  : LG-1 depends on LG-2, LG-3, LG-4
% Version  : [McC92b] axioms : Reduced > Complete.
% English  : Axiomatisations of the left group calculus are {LG-1,
%            LG-2,LG-3,LG-4,LG-5} by Kalman, {LG-2,LG-3}, {LG-2,P-1},
%            {LG-2,P-4}, {LG-2,Q-1,Q-2}, {P-1,Q-3}, {P-4,Q-3}, {Q-1,
%            Q-2,Q-3}, {Q-1,Q-3,Q-4}, {LG-27-1690} all by McCune. Show
%            that LG-1 depends on a part of the Kalman system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : LG-89 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.5.0, 0.06 v5.4.0, 0.11 v5.3.0, 0.10 v5.2.0, 0.15 v5.1.0, 0.06 v5.0.0, 0.13 v4.1.0, 0.07 v4.0.1, 0.00 v2.2.1, 0.11 v2.1.0, 0.13 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :   16 (   0 singleton)
%            Maximal term depth    :    7 (   4 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(lg_2,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(X,Y),equivalent(X,Z)),equivalent(Y,Z)),U),U)) )).

cnf(lg_3,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(equivalent(X,Y),equivalent(X,Z)),U),equivalent(equivalent(Y,Z),U)),V),V)) )).

cnf(lg_4,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(equivalent(X,Y),Z),U),equivalent(equivalent(equivalent(X,V),Z),equivalent(equivalent(Y,V),U)))) )).

cnf(prove_lg_1,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,equivalent(equivalent(b,b),a)),c),c)) )).

%--------------------------------------------------------------------------
