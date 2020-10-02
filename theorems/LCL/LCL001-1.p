%------------------------------------------------------------------------------
% File     : LCL001-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Disjunction/Negation 2 valued sentential)
% Problem  : The Whitehead-Russell system => the Meredith axiom
% Version  : [McC92] axioms.
% English  : The Whitehead-Russell axiomatisation of the Disjunction/
%            Negation 2 valued sentential calculus is {AN-1,AN-2,AN-3,
%            AN-4}. Show that the Merideth axiom can be derived from the
%            Whitehead-Russell axiomatisation.

% Refs     : [Mer53] Meredith (1953), Single Axioms for the Systems (C,N),
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : AN-50 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.67 v7.3.0, 0.50 v7.0.0, 1.00 v6.2.0, 0.83 v6.1.0, 0.93 v6.0.0, 1.00 v5.2.0, 0.92 v5.1.0, 0.94 v5.0.0, 1.00 v4.0.1, 0.71 v3.4.0, 0.60 v3.3.0, 0.33 v3.2.0, 0.67 v3.1.0, 0.83 v2.7.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    7 (   5 constant; 0-2 arity)
%            Number of variables   :   10 (   1 singleton)
%            Maximal term depth    :    7 (   4 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%------------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(or(not(X),Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(an_1,axiom,
    ( is_a_theorem(or(not(or(not(Y),Z)),or(not(or(X,Y)),or(X,Z)))) )).

cnf(an_2,axiom,
    ( is_a_theorem(or(not(or(X,Y)),or(Y,X))) )).

cnf(an_3,axiom,
    ( is_a_theorem(or(not(X),or(Y,X))) )).

cnf(an_4,axiom,
    ( is_a_theorem(or(not(or(X,X)),X)) )).

cnf(prove_an_CAMerideth,negated_conjecture,
    ( ~ is_a_theorem(or(not(or(not(or(not(a),b)),or(c,or(e,falsehood)))),or(not(or(not(e),a)),or(c,or(falsehood,a))))) )).

%------------------------------------------------------------------------------
