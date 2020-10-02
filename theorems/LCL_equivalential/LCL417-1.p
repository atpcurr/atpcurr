%--------------------------------------------------------------------------
% File     : LCL417-1 : TPTP v7.3.0. Released v2.5.0.
% Domain   : Logic Calculi (Equivalential)
% Problem  : XCB is a single axiom for the equivalential calculus
% Version  : [EF+02] axioms.
% English  : Show that formula XCB is a single axiom for the equivalential
%            calculus by deriving the single axiom WN by condensed detachment.

% Refs     : [WW+83] Wos et al. (1983), Questions Concerning Possible Short
%          : [EF+02] Ernst et al. (2002), More First-order Test Problems in
% Source   : [EF+02]
% Names    : xcb [EF+02]

% Status   : Unsatisfiable
% Rating   : 0.83 v7.3.0, 0.75 v7.0.0, 1.00 v2.6.0, 0.83 v2.5.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   2 RR)
%            Number of atoms       :    5 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   3 constant; 0-2 arity)
%            Number of variables   :    5 (   0 singleton)
%            Maximal term depth    :    5 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : First proved to be a single axiom by Wos in April 2002.
%--------------------------------------------------------------------------
%----Condensed detachment
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(equivalent(A,B))
    | ~ is_a_theorem(A)
    | is_a_theorem(B) )).

%----XCB
cnf(xcb,axiom,
    ( is_a_theorem(equivalent(A,equivalent(equivalent(equivalent(A,B),equivalent(C,B)),C))) )).

%----Denial of single axiom WN
cnf(prove_wn,negated_conjecture,
    ( ~ is_a_theorem(equivalent(equivalent(a,equivalent(b,c)),equivalent(c,equivalent(a,b)))) )).

%--------------------------------------------------------------------------
