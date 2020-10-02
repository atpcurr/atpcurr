%--------------------------------------------------------------------------
% File     : LCL006-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : EC-1 depends on the Wajsberg system
% Version  : [McC92] axioms.
% English  : Two axiomatisations of the equivalential calculus are
%            {EC-1,EC-2} by Lesniewski, and {EC-4,EC-5} by Wajsburg. Show
%            that EC-1 can be derived from the Wajsburg system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : EC-69 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.17 v7.3.0, 0.00 v6.1.0, 0.14 v6.0.0, 0.11 v5.5.0, 0.12 v5.4.0, 0.28 v5.3.0, 0.30 v5.2.0, 0.15 v5.1.0, 0.19 v5.0.0, 0.13 v4.1.0, 0.20 v4.0.1, 0.00 v2.7.0, 0.25 v2.6.0, 0.00 v2.2.1, 0.33 v2.1.0, 0.38 v2.0.0
% Syntax   : Number of clauses     :    4 (   0 non-Horn;   3 unit;   2 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :    7 (   0 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

%----Axiom of symmetry
cnf(ec_4,axiom,
    ( is_a_theorem(equivalent(equivalent(X,Y),equivalent(Y,X))) )).

%----Axiom of associativity
cnf(ec_5,axiom,
    ( is_a_theorem(equivalent(equivalent(equivalent(X,Y),Z),equivalent(X,equivalent(Y,Z)))) )).

cnf(prove_ec_1,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(equivalent(a,b),equivalent(c,a)),equivalent(b,c))) )).

%--------------------------------------------------------------------------
