%--------------------------------------------------------------------------
% File     : LCL114-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Many valued sentential)
% Problem  : MV-36 depnds on the Merideth system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the many valued sentential calculus
%            is {MV-1,MV-2,MV-3,MV-5} by Meredith. Show that 36 depends
%            on the Meredith system.

% Refs     : [Ove90] Overbeek (1990), ATP competition announced at CADE-10
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
%          : [Ove93] Overbeek (1993), The CADE-11 Competitions: A Personal
%          : [LM93]  Lusk & McCune (1993), Uniform Strategies: The CADE-11
% Source   : [McC92]
% Names    : CADE-11 Competition 7 [Ove90]
%          : MV-60 [MW92]
%          : THEOREM 7 [LM93]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.2.0, 0.17 v6.1.0, 0.43 v6.0.0, 0.22 v5.5.0, 0.50 v5.4.0, 0.56 v5.3.0, 0.65 v5.2.0, 0.38 v5.1.0, 0.50 v5.0.0, 0.47 v4.1.0, 0.53 v4.0.1, 0.14 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.50 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.29 v2.3.0, 0.43 v2.2.1, 0.89 v2.1.0, 0.88 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
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

cnf(prove_mv_36,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(not(b),not(a)))) )).

%--------------------------------------------------------------------------
