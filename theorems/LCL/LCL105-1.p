%--------------------------------------------------------------------------
% File     : LCL105-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Left group)
% Problem  : LG-2 depends on the 7th McCune system
% Version  : [McC92b] axioms.
% English  : Axiomatisations of the left group calculus are {LG-1,
%            LG-2,LG-3,LG-4,LG-5} by Kalman, {LG-2,LG-3}, {LG-2,P-1},
%            {LG-2,P-4}, {LG-2,Q-1,Q-2}, {P-1,Q-3}, {P-4,Q-3}, {Q-1,
%            Q-2,Q-3}, {Q-1,Q-3,Q-4}, {LG-27-1690} all by McCune. Show
%            that LG-2 depends on the seventh McCune system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : LG-98 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.50 v6.1.0, 0.79 v6.0.0, 0.56 v5.5.0, 0.81 v5.4.0, 0.89 v5.3.0, 0.90 v5.2.0, 0.85 v5.1.0, 0.81 v5.0.0, 0.73 v4.1.0, 0.80 v4.0.1, 0.57 v3.7.0, 0.71 v3.4.0, 0.80 v3.3.0, 0.33 v3.1.0, 0.67 v2.7.0, 0.75 v2.6.0, 0.71 v2.5.0, 0.57 v2.4.0, 0.71 v2.3.0, 0.57 v2.2.1, 0.89 v2.2.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :   11 (   0 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(q_1,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(Y,Z),equivalent(equivalent(Z,Y),X)))) )).

cnf(q_2,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(equivalent(Z,X),equivalent(Z,Y)))) )).

cnf(q_3,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(X,Y),equivalent(equivalent(Y,X),Z)),Z)) )).

cnf(prove_lg_2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(a,b),equivalent(a,c)),equivalent(b,c)),e),e)) )).

%--------------------------------------------------------------------------
