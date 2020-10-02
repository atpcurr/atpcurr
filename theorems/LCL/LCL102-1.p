%--------------------------------------------------------------------------
% File     : LCL102-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Left group)
% Problem  : P-1 depends on the 4th McCune system
% Version  : [McC92b] axioms.
% English  : Axiomatisations of the left group calculus are {LG-1,
%            LG-2,LG-3,LG-4,LG-5} by Kalman, {LG-2,LG-3}, {LG-2,P-1},
%            {LG-2,P-4}, {LG-2,Q-1,Q-2}, {P-1,Q-3}, {P-4,Q-3}, {Q-1,
%            Q-2,Q-3}, {Q-1,Q-3,Q-4}, {LG-27-1690} all by McCune. Show
%            that P-1 depends on the 4th McCune system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : LG-95 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.13 v4.1.0, 0.07 v4.0.1, 0.00 v2.4.0, 0.00 v2.2.1, 0.11 v2.1.0, 0.25 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :   12 (   0 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(lg_2,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(X,Y),equivalent(X,Z)),equivalent(Y,Z)),U),U)) )).

cnf(q_1,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(Y,Z),equivalent(equivalent(Z,Y),X)))) )).

cnf(q_2,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(equivalent(Z,X),equivalent(Z,Y)))) )).

cnf(prove_p_1,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,b),c),equivalent(equivalent(e,b),equivalent(equivalent(a,e),c)))) )).

%--------------------------------------------------------------------------