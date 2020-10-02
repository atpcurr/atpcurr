%--------------------------------------------------------------------------
% File     : LCL004-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Disjunction/Negation 2 valued sentential)
% Problem  : AN-CAMerideth => AN-3
% Version  : [McC92] axioms.
% English  : The Whitehead-Russell axiomatisation of the Disjunction/
%            Negation 2 valued sentential calculus is {AN-1,AN-2,AN-3,
%            AN-4}. Show that AN-3 can be derived from the Merideth axiom.

% Refs     : [Mer53] Meredith (1953), Single Axioms for the Systems (C,N),
%          : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : AN-53 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.00 v6.2.0, 0.17 v6.1.0, 0.36 v6.0.0, 0.00 v5.5.0, 0.31 v5.4.0, 0.39 v5.3.0, 0.45 v5.2.0, 0.31 v5.1.0, 0.38 v5.0.0, 0.40 v4.1.0, 0.33 v4.0.1, 0.14 v3.4.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.25 v2.6.0, 0.29 v2.5.0, 0.00 v2.4.0, 0.00 v2.3.0, 0.14 v2.2.1, 0.56 v2.1.0, 0.75 v2.0.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :    7 (   1 singleton)
%            Maximal term depth    :    7 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(or(not(X),Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(an_CAMerideth,axiom,
    ( is_a_theorem(or(not(or(not(or(not(X),Y)),or(Z,or(U,V)))),or(not(or(not(U),X)),or(Z,or(V,X))))) )).

cnf(an_3,negated_conjecture,
    ( ~ is_a_theorem(or(not(a),or(b,a))) )).

%--------------------------------------------------------------------------
