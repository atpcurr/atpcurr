%--------------------------------------------------------------------------
% File     : LCL022-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : EC-1 depends on YQL
% Version  : [OTTER] axioms.
% English  : An axiomatisation of the equivalential calculus is {EC-1,
%            EC-2} by Lesniewski. Show that EC-1 can be derived from the
%            single Lukasiewicz axiom YQL.

% Refs     :
% Source   : [OTTER]
% Names    : ec.in part 1 [OTTER]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.07 v4.0.1, 0.00 v2.2.1, 0.11 v2.1.0, 0.13 v2.0.0
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
cnf(yql,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(equivalent(Z,Y),equivalent(X,Z)))) )).

%----Axiom of symmetry
cnf(prove_ec_1,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,b),equivalent(c,a)),equivalent(b,c))) )).

%--------------------------------------------------------------------------
