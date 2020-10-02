%--------------------------------------------------------------------------
% File     : LCL031-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Implication/Falsehood 2 valued sentential)
% Problem  : C0-CAMerideth depends on the Tarski-Bernays system
% Version  : [McC92] axioms.
% English  : Axiomatisations for the Implication/Falsehood 2 valued
%            sentential calculus are {C0-1,C0-2,C0-3,C0-4}
%            by Tarski-Bernays, {C0-2,C0-5,C0-6} by Church, and the single
%            Meredith axioms. Show that the single Meredith axiom can
%            be derived from the Tarski-Bernays system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : C0-43 [MW92]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.67 v6.1.0, 0.64 v6.0.0, 0.44 v5.5.0, 0.69 v5.4.0, 0.67 v5.3.0, 0.70 v5.2.0, 0.54 v5.1.0, 0.62 v5.0.0, 0.60 v4.0.1, 0.29 v4.0.0, 0.14 v3.7.0, 0.00 v3.3.0, 0.33 v3.2.0, 0.00 v3.1.0, 0.17 v2.7.0, 0.38 v2.6.0, 0.43 v2.5.0, 0.86 v2.4.0, 1.00 v2.3.0, 0.86 v2.2.1, 1.00 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    6 (   5 constant; 0-2 arity)
%            Number of variables   :   10 (   3 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(c0_1,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(c0_2,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(c0_3,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),X),X)) )).

cnf(c0_4,axiom,
    ( is_a_theorem(implies(falsehood,X)) )).

cnf(prove_c0_CAMerideth,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(implies(implies(a,b),implies(c,falsehood)),e),falsehood),implies(implies(falsehood,a),implies(c,a)))) )).

%--------------------------------------------------------------------------
