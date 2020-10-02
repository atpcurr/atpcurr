%--------------------------------------------------------------------------
% File     : LCL020-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : XGK depends on XHK
% Version  : [McC92] axioms.
% English  : Show that the single Kalman axiom XGK can be derived from the
%            single Winker axiom XHK.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
%          : [Wos95] Wos (1995), Searching for Circles of Pure Proofs
% Source   : [McC92]
% Names    : EC-83 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.67 v6.1.0, 0.79 v6.0.0, 0.67 v5.5.0, 0.81 v5.4.0, 0.94 v5.3.0, 0.95 v5.2.0, 0.85 v5.1.0, 0.88 v5.0.0, 0.80 v4.0.1, 0.57 v3.7.0, 0.71 v3.4.0, 0.60 v3.3.0, 0.33 v3.1.0, 0.50 v2.7.0, 0.62 v2.6.0, 0.57 v2.5.0, 0.71 v2.4.0, 0.71 v2.3.0, 0.71 v2.2.1, 1.00 v2.0.0
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

%----Axiom by Winker
cnf(xhk,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(Y,Z),equivalent(equivalent(X,Z),Y)))) )).

%----Axiom by Kalman
cnf(prove_xgk,negated_conjecture,
    ( ~ is_a_theorem(equivalent(a,equivalent(equivalent(b,equivalent(c,a)),equivalent(c,b)))) )).

%--------------------------------------------------------------------------
