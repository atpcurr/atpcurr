%--------------------------------------------------------------------------
% File     : LCL011-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : YQF depends on YQJ
% Version  : [McC92] axioms.
% English  : Show that the single Lukasiewicz axiom YQF can be derived
%            from the single Lukasiewicz axiom YQJ.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
%          : [Wos95] Wos (1995), Searching for Circles of Pure Proofs
% Source   : [McC92]
% Names    : EC-74 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.1.0, 0.07 v6.0.0, 0.00 v5.4.0, 0.06 v5.3.0, 0.05 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.2.1, 0.11 v2.1.0, 0.25 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :    5 (   0 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

%----Axiom by Lukasiewicz
cnf(yqj,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(equivalent(Z,X),equivalent(Y,Z)))) )).

%----Axiom by Lukasiewicz
cnf(prove_yqf,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(a,b),equivalent(equivalent(a,c),equivalent(c,b)))) )).

%--------------------------------------------------------------------------
