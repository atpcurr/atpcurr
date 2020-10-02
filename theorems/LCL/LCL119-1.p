%--------------------------------------------------------------------------
% File     : LCL119-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (R)
% Problem  : WO depends on XGJ
% Version  : [McC92] axioms.
% English  : Single axioms for the R calculus are QYF, YQM, WO, all
%            by Meredith and XGJ by Winker. Show that WO depends on XGJ.

% Refs     : [WW+90] Wos et al. (1990), Automated Reasoning Contributes to
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : RC-1 [WW+90]
%          : R-87 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.33 v6.1.0, 0.64 v6.0.0, 0.44 v5.5.0, 0.69 v5.4.0, 0.83 v5.3.0, 0.85 v5.2.0, 0.77 v5.1.0, 0.75 v5.0.0, 0.80 v4.1.0, 0.73 v4.0.1, 0.43 v4.0.0, 0.57 v3.7.0, 0.71 v3.4.0, 0.80 v3.3.0, 0.33 v3.1.0, 0.50 v2.6.0, 0.57 v2.5.0, 0.71 v2.4.0, 0.71 v2.3.0, 0.71 v2.2.1, 0.89 v2.2.0, 1.00 v2.0.0
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

%----Axiom from Winker
cnf(xgj,axiom,
    ( is_a_theorem(equivalent(X,equivalent(equivalent(Y,equivalent(Z,X)),equivalent(Y,Z)))) )).

%----Axiom from Meredith
cnf(prove_wo,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(a,equivalent(b,c)),equivalent(c,equivalent(b,a)))) )).

%--------------------------------------------------------------------------
