%--------------------------------------------------------------------------
% File     : LCL120-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (R)
% Problem  : XGJ depends on QYF
% Version  : [McC92] axioms.
% English  : Single axioms for the R calculus are QYF, YQM, WO, all
%            by Meredith and XGJ by Winker. Show that XGJ depends on QYF.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : R-88 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.2.1, 0.11 v2.1.0, 0.13 v2.0.0
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

%----Axiom from Meredith
cnf(qyf,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(X,Y),equivalent(X,Z)),equivalent(Z,Y))) )).

%----Axiom from Winker
cnf(prove_xgj,negated_conjecture,
    ( ~ is_a_theorem(equivalent(a,equivalent(equivalent(b,equivalent(c,a)),equivalent(b,c)))) )).

%--------------------------------------------------------------------------
