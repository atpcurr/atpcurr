%--------------------------------------------------------------------------
% File     : LCL110-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Many valued sentential)
% Problem  : MV-24 depnds on the Merideth system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the many valued sentential calculus
%            is {MV-1,MV-2,MV-3,MV-5} by Meredith. Show that MV24 depends
%            on the Meredith system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : MV-56 [MW92]
%          : mv.in part 1 [OTTER]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.15 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.2.1, 0.22 v2.1.0, 0.25 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   11 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(mv_1,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(mv_2,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(mv_3,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Y),implies(implies(Y,X),X))) )).

cnf(mv_5,axiom,
    ( is_a_theorem(implies(implies(not(X),not(Y)),implies(Y,X))) )).

cnf(prove_mv_24,negated_conjecture,
    ( ~ is_a_theorem(implies(not(not(a)),a)) )).

%--------------------------------------------------------------------------
