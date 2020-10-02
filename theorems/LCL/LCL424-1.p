%--------------------------------------------------------------------------
% File     : LCL424-1 : TPTP v7.3.0. Released v2.5.0.
% Domain   : Logic Calculi (Implication/Negation 2 valued sentential)
% Problem  : Mer-21 is a single axiom for two-valued logic
% Version  : [EF+02] axioms.
% English  : Show that the formula Mer-21 is a single axiom for two-valued
%            logic by deriving the Lukasiewicz 3-basis.

% Refs     : [Wos01] Wos (2001), Conquering the Meredith Single Axiom
%          : [EF+02] Ernst et al. (2002), More First-order Test Problems in
% Source   : [EF+02]
% Names    : twoval-mer-21 [EF+02]

% Status   : Unsatisfiable
% Rating   : 1.00 v2.5.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   1 unit;   2 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :    7 (   1 singleton)
%            Maximal term depth    :    7 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments :
%--------------------------------------------------------------------------
%----Condensed detachment
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(A,B))
    | ~ is_a_theorem(A)
    | is_a_theorem(B) )).

%----Mer-21
cnf(mer21,axiom,
    ( is_a_theorem(implies(implies(implies(implies(implies(A,B),implies(not(C),not(D))),C),E),implies(implies(E,A),implies(D,A)))) )).

%----Denial of Lukasiewicz 3-basis
cnf(prove_luka_3_basis,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(a,b),implies(implies(b,c),implies(a,c))))
    | ~ is_a_theorem(implies(implies(not(a),a),a))
    | ~ is_a_theorem(implies(a,implies(not(a),b))) )).

%--------------------------------------------------------------------------
