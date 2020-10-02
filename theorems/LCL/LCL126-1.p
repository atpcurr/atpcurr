%--------------------------------------------------------------------------
% File     : LCL126-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Right group)
% Problem  : Q-2 depends on the 2nd McCune system
% Version  : [McC92b] axioms.
% English  : Kalman's axiomatisation of the right group calculus
%            is {LG-1,LG-2,LG-3,LG-4,LG-5}. McCune has shown that LG-2
%            is a single axiom. Other axiomatisations by McCune are
%            {Q-2,Q-3}, {Q-3,Q-4}, S-2, S-3, S-4, P-4, S-6. Show that Q-2
%            depends on the second McCune system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : RG-107 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 non-Horn;   3 unit;   2 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :    8 (   0 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(q_3,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(X,equivalent(Y,Z)),equivalent(Z,Y)))) )).

cnf(q_4,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(equivalent(X,Z),equivalent(Y,Z)))) )).

cnf(prove_q_2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,b),equivalent(c,b)),equivalent(a,c))) )).

%--------------------------------------------------------------------------
