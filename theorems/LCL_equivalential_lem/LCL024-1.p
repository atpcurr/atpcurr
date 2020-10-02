%--------------------------------------------------------------------------
% File     : LCL024-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : PYO depends on XGK
% Version  : [Ove90] axioms.
% English  : Show that Kalman's shortest single axiom for the
%            equivalential calculus, XGK, can be derived from the Meredith
%            single axiom PYO.

% Refs     : [Wos88] Wos (1988), Automated Reasoning - 33 Basic Research Pr
%          : [Ove90] Overbeek (1990), ATP competition announced at CADE-10
%          : [Ove93] Overbeek (1993), The CADE-11 Competitions: A Personal
%          : [LM93]  Lusk & McCune (1993), Uniform Strategies: The CADE-11
% Source   : [Ove90]
% Names    : Test Problem 16 [Wos88]
%          : XGK and Equivalential Calculus [Wos88]
%          : CADE-11 Competition 4 [Ove90]
%          : THEOREM 4 [LM93]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.2.0, 0.17 v6.1.0, 0.50 v6.0.0, 0.11 v5.5.0, 0.50 v5.4.0, 0.56 v5.3.0, 0.65 v5.2.0, 0.46 v5.1.0, 0.56 v5.0.0, 0.60 v4.0.1, 0.29 v3.4.0, 0.20 v3.3.0, 0.00 v3.2.0, 0.33 v2.7.0, 0.38 v2.6.0, 0.43 v2.5.0, 0.29 v2.4.0, 0.29 v2.3.0, 0.43 v2.2.1, 0.78 v2.2.0, 0.89 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :    5 (   0 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

%----Axiom by Kalman
cnf(xgk,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(Y,equivalent(Z,X)),equivalent(Z,Y)))) )).

%----Axiom by Meredith
cnf(prove_pyo,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,equivalent(b,c)),c),equivalent(b,a))) )).

%--------------------------------------------------------------------------
