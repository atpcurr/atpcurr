%--------------------------------------------------------------------------
% File     : LCL103-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Left group)
% Problem  : LG-2 depends on the 5th McCune system
% Version  : [McC92b] axioms.
% English  : Axiomatisations of the left group calculus are {LG-1,
%            LG-2,LG-3,LG-4,LG-5} by Kalman, {LG-2,LG-3}, {LG-2,P-1},
%            {LG-2,P-4}, {LG-2,Q-1,Q-2}, {P-1,Q-3}, {P-4,Q-3}, {Q-1,
%            Q-2,Q-3}, {Q-1,Q-3,Q-4}, {LG-27-1690} all by McCune. Show
%            that LG-2 depends on the 5th McCune system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : LG-96 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.29 v6.0.0, 0.11 v5.5.0, 0.38 v5.4.0, 0.44 v5.3.0, 0.45 v5.2.0, 0.31 v5.1.0, 0.44 v5.0.0, 0.47 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.75 v2.6.0, 0.43 v2.5.0, 0.29 v2.4.0, 0.29 v2.3.0, 0.43 v2.2.1, 0.56 v2.2.0, 0.67 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 non-Horn;   3 unit;   2 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :    9 (   0 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(p_1,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(X,Y),Z),equivalent(equivalent(U,Y),equivalent(equivalent(X,U),Z)))) )).

cnf(q_3,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(X,Y),equivalent(equivalent(Y,X),Z)),Z)) )).

cnf(prove_lg_2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(equivalent(equivalent(a,b),equivalent(a,c)),equivalent(b,c)),e),e)) )).

%--------------------------------------------------------------------------
