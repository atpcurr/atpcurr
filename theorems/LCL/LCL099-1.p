%--------------------------------------------------------------------------
% File     : LCL099-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Left group)
% Problem  : LG-5 depends on the 1st McCune system
% Version  : [McC92b] axioms: [McC92] axioms.
% English  : Axiomatisations of the left group calculus are {LG-1,
%            LG-2,LG-3,LG-4,LG-5} by Kalman, {LG-2,LG-3}, {LG-2,P-1},
%            {LG-2,P-4}, {LG-2,Q-1,Q-2}, {P-1,Q-3}, {P-4,Q-3}, {Q-1,
%            Q-2,Q-3}, {Q-1,Q-3,Q-4}, {LG-27-1690} all by McCune. Show
%            that LG-5 depends on the first McCune system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92a] McCune (1992), Automated Discovery of New Axiomatisat
%          : [McC92b] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92b]
% Names    : LG-92 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.50 v6.1.0, 0.86 v6.0.0, 0.78 v5.5.0, 0.88 v5.4.0, 0.89 v5.3.0, 0.90 v5.2.0, 0.77 v5.1.0, 0.81 v5.0.0, 0.80 v4.1.0, 0.87 v4.0.1, 0.43 v4.0.0, 0.57 v3.7.0, 0.43 v3.4.0, 0.40 v3.3.0, 0.00 v3.1.0, 0.33 v2.7.0, 0.88 v2.6.0, 0.86 v2.5.0, 0.71 v2.4.0, 0.71 v2.3.0, 0.71 v2.2.1, 1.00 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 non-Horn;   3 unit;   2 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    6 (   5 constant; 0-2 arity)
%            Number of variables   :   11 (   0 singleton)
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

cnf(prove_lg_5,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,equivalent(equivalent(b,a),c)),equivalent(equivalent(e,a),falsehood)),equivalent(equivalent(equivalent(equivalent(a,b),e),c),falsehood))) )).

%--------------------------------------------------------------------------
