%--------------------------------------------------------------------------
% File     : LCL197-1 : TPTP v7.3.0. Released v1.1.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Principia Mathematica 2.41
% Version  : [WR27] axioms : Reduced & Augmented.
% English  :

% Refs     : [WR27]  Whitehead & Russell (1927), Principia Mathematica
%          : [NSS63] Newell et al. (1963), Empirical Explorations with the
%          : [ORo89] O'Rourke (1989), LT Revisited: Explanation-Based Learn
%          : [SE94]  Segre & Elkan (1994), A High-Performance Explanation-B
% Source   : [SE94]
% Names    : Problem 2.41 [WR27]

% Status   : Unsatisfiable
% Rating   : 0.00 v5.5.0, 0.06 v5.4.0, 0.11 v5.3.0, 0.15 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.00 v2.1.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    9 (   0 non-Horn;   6 unit;   4 RR)
%            Number of atoms       :   14 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    2 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :   17 (   1 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : Reduced to use only or and not, and includes a redundant rule
%            of transitivity of implication, and a reduced rule of
%            detachment.
%--------------------------------------------------------------------------
%----Include axioms of propositional logic
%--------------------------------------------------------------------------
% File     : LCL003-0 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Propositional)
% Axioms   : Propositional logic deduction
% Version  : [WR27] axioms : Reduced & Augmented.
% English  :

% Refs     : [WR27]  Whitehead & Russell (1927), Principia Mathematica
%          : [ORo89] O'Rourke (1989), LT Revisited: Explanation-Based Learn
%          : [SE94]  Segre & Elkan (1994), A High-Performance Explanation-B
% Source   : [SE94]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of clauses    :    8 (   0 non-Horn;   5 unit;   3 RR)
%            Number of atoms      :   13 (   0 equality)
%            Maximal clause size  :    3 (   2 average)
%            Number of predicates :    2 (   0 propositional; 1-1 arity)
%            Number of functors   :    2 (   0 constant; 1-2 arity)
%            Number of variables  :   17 (   1 singleton)
%            Maximal term depth   :    5 (   3 average)
% SPC      : 

% Comments : Reduced to use only or and not, and includes a redundant rule
%            of transitivity of implication, and a reduced rule of
%            detachment.
%--------------------------------------------------------------------------
cnf(axiom_1_2,axiom,
    ( axiom(or(not(or(A,A)),A)) )).

cnf(axiom_1_3,axiom,
    ( axiom(or(not(A),or(B,A))) )).

cnf(axiom_1_4,axiom,
    ( axiom(or(not(or(A,B)),or(B,A))) )).

cnf(axiom_1_5,axiom,
    ( axiom(or(not(or(A,or(B,C))),or(B,or(A,C)))) )).

cnf(axiom_1_6,axiom,
    ( axiom(or(not(or(not(A),B)),or(not(or(C,A)),or(C,B)))) )).

cnf(rule_1,axiom,
    ( theorem(X)
    | ~ axiom(X) )).

cnf(rule_2,axiom,
    ( theorem(X)
    | ~ axiom(or(not(Y),X))
    | ~ theorem(Y) )).

cnf(rule_3,axiom,
    ( theorem(or(not(X),Z))
    | ~ axiom(or(not(X),Y))
    | ~ theorem(or(not(Y),Z)) )).

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
cnf(prove_this,negated_conjecture,
    ( ~ theorem(or(not(or(q,or(p,q))),or(p,q))) )).

%--------------------------------------------------------------------------
