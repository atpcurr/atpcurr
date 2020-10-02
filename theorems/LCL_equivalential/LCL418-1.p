%--------------------------------------------------------------------------
% File     : LCL418-1 : TPTP v7.3.0. Released v2.5.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : Is formula YQE a single axiom for the right group calculus?
% Version  : [EF+02] axioms.
% English  :

% Refs     : [McC92] McCune (1992), Automated Discovery of New Axiomatisati
%          : [EF+02] Ernst et al. (2002), More First-order Test Problems in
% Source   : [EF+02]
% Names    : yqe [EF+02]

% Status   : Open
% Rating   : 1.00 v2.5.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
%            Number of variables   :    5 (   0 singleton)
%            Maximal term depth    :    6 (   3 average)
% SPC      : CNF_OPN_RFO_NEQ_HRN

% Comments : Any countermodels must be infinite.
%--------------------------------------------------------------------------
%----Condensed detachment
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(A,B))
    | ~ is_a_theorem(A)
    | is_a_theorem(B) )).

%----YQE
cnf(yqe,axiom,
    ( is_a_theorem(equivalent(equivalent(A,B),equivalent(equivalent(A,C),equivalent(B,C)))) )).

%----Denial of single axiom L2'
cnf(prove_l2,negated_conjecture,
    ( ~ is_a_theorem(equivalent(a,equivalent(a,equivalent(equivalent(b,c),equivalent(equivalent(b,d),equivalent(c,d)))))) )).

%--------------------------------------------------------------------------
