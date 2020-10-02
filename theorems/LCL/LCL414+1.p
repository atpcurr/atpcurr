%--------------------------------------------------------------------------
% File     : LCL414+1 : TPTP v7.3.0. Released v2.5.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem THM147
% Version  : Especial.
% English  :

% Refs     : [And97] Andrews (1994), Email to G. Sutcliffe
% Source   : [And97]
% Names    : THM147 [And97]

% Status   : Theorem
% Rating   : 0.06 v7.3.0, 0.00 v7.0.0, 0.07 v6.3.0, 0.15 v6.2.0, 0.09 v6.1.0, 0.24 v6.0.0, 0.50 v5.5.0, 0.25 v5.4.0, 0.26 v5.3.0, 0.30 v5.2.0, 0.14 v5.1.0, 0.21 v5.0.0, 0.15 v4.1.0, 0.17 v4.0.1, 0.26 v4.0.0, 0.25 v3.7.0, 0.00 v3.4.0, 0.33 v3.3.0, 0.00 v2.5.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :    7 (   0 equality)
%            Maximal formula depth :    8 (   8 average)
%            Number of connectives :   10 (   4   ~;   2   |;   4   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    1 (   0 propositional; 1-1 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   10 (   0 sgn;   9   !;   1   ?)
%            Maximal term depth    :    4 (   2 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%--------------------------------------------------------------------------
fof(thm147,conjecture,
    ( ~ ( ! [P,Q] :
            ( ~ a_truth(implies(P,Q))
            | ~ a_truth(P)
            | a_truth(Q) )
        & ! [P,Q] : a_truth(implies(P,implies(Q,P)))
        & ! [P,Q,R] : a_truth(implies(implies(P,implies(Q,R)),implies(implies(P,Q),implies(P,R))))
        & ! [P,Q] : a_truth(implies(implies(not(P),not(Q)),implies(Q,P)))
        & ? [A] : ~ a_truth(implies(A,A)) ) )).

%--------------------------------------------------------------------------
