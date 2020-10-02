%--------------------------------------------------------------------------
% File     : LCL131-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Right group)
% Problem  : LG-2 depends on S-6
% Version  : [McC92b] axioms.
% English  : Kalman's axiomatisation of the right group calculus
%            is {LG-1,LG-2,LG-3,LG-4,LG-5}. McCune has shown that LG-2
%            is a single axiom. Other axiomatisations by McCune are
%            {Q-2,Q-3}, {Q-3,Q-4}, S-2, S-3, S-4, P-4, S-6. Show that LG-2
%            depends on S-6.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : RG-112 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.2.0, 0.17 v6.1.0, 0.14 v6.0.0, 0.00 v5.5.0, 0.19 v5.4.0, 0.33 v5.3.0, 0.40 v5.2.0, 0.08 v5.1.0, 0.31 v5.0.0, 0.27 v4.1.0, 0.33 v4.0.1, 0.00 v3.1.0, 0.17 v2.7.0, 0.38 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :    6 (   0 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(s_6,axiom,
    ( is_a_theorem(equivalent(equivalent(X,equivalent(equivalent(equivalent(Y,Z),equivalent(U,Z)),equivalent(Y,U))),X)) )).

cnf(prove_lg_2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(a,equivalent(a,equivalent(equivalent(b,c),equivalent(equivalent(b,e),equivalent(c,e)))))) )).

%--------------------------------------------------------------------------
