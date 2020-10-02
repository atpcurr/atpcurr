%--------------------------------------------------------------------------
% File     : LCL109-1 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Many valued sentential)
% Problem  : MV-4 depends on the Merideth system
% Version  : [McC92] axioms.
% English  : An axiomatisation of the many valued sentential calculus
%            is {MV-1,MV-2,MV-3,MV-5} by Meredith. Show that MV-4 depends
%            on the Meredith system.

% Refs     : [MW92]  McCune & Wos (1992), Experiments in Automated Deductio
%          : [McC92] McCune (1992), Email to G. Sutcliffe
%          : [Sla02] Slaney (2002), More Proofs of an Axiom of Lukasiewicz
%          : [Sla03] Slaney (2003), Email to G. Sutcliffe
% Source   : [McC92]
% Names    : MV-55 [MW92]
%          : Luka5 [ANL]

% Status   : Unsatisfiable
% Rating   : 0.83 v7.3.0, 0.75 v6.2.0, 0.83 v6.1.0, 1.00 v4.0.1, 0.86 v3.4.0, 0.80 v3.3.0, 0.67 v3.2.0, 1.00 v2.0.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   5 unit;   2 RR)
%            Number of atoms       :    8 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :   11 (   1 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : In [Sla02] mv_2 is replaced by AxB (B->C)->((A->B)->(A->C)).
%            mv_2 can be derived from that basis [Sla03]
%--------------------------------------------------------------------------
cnf(condensed_detachment,axiom,
    ( ~ is_a_theorem(implies(X,Y))
    | ~ is_a_theorem(X)
    | is_a_theorem(Y) )).

cnf(mv_1,axiom,
    ( is_a_theorem(implies(X,implies(Y,X))) )).

cnf(mv_2,axiom,
    ( is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z)))) )).

cnf(mv_3,axiom,
    ( is_a_theorem(implies(implies(implies(X,Y),Y),implies(implies(Y,X),X))) )).

cnf(mv_5,axiom,
    ( is_a_theorem(implies(implies(not(X),not(Y)),implies(Y,X))) )).

cnf(prove_mv_4,negated_conjecture,
    ( ~ is_a_theorem(implies(implies(implies(a,b),implies(b,a)),implies(b,a))) )).

%--------------------------------------------------------------------------
