%--------------------------------------------------------------------------
% File     : LCL007-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : EC-2 depends on the Wajsberg system
% Version  : [McC92] axioms.
% English  : Two axiomatisations of the equivalential calculus are
%            {EC-1,EC-2} by Lesniewski, and {EC-4,EC-5} by Wajsburg. Show
%            that EC-2 can be derived from the Wajsburg system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : EC-70 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.00 v2.0.0
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

cnf(prove_ec_2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(a,equivalent(b,c)),equivalent(equivalent(a,b),c))) )).

%--------------------------------------------------------------------------
