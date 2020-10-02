%------------------------------------------------------------------------------
% File     : LCL656+1.005 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, the branching formula made provable, size 5
% Version  : Especial.
% English  : The branching formula plus a negation symbol in front and an
%            additional subformula to make the formula provable.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_branch_p [BHS00]

% Status   : Theorem
% Rating   : 0.00 v6.4.0, 0.07 v6.3.0, 0.00 v6.2.0, 0.09 v6.1.0, 0.16 v6.0.0, 0.25 v5.4.0, 0.22 v5.3.0, 0.30 v5.2.0, 0.07 v5.0.0, 0.15 v4.1.0, 0.17 v4.0.1, 0.21 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :  130 (   0 equality)
%            Maximal formula depth :   35 (  18 average)
%            Number of connectives :  246 ( 118   ~;  74   |;  54   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   14 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   34 (   0 sgn;  33   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,(
    ! [X] : r1(X,X) )).

fof(main,conjecture,(
    ~ ( ? [X] :
          ~ ( ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p3(Y) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ( ( ( ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ~ p6(X)
                                                      & ~ p106(X)
                                                      & p105(X) ) ) )
                                          & ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( p6(X)
                                                      & ~ p106(X)
                                                      & p105(X) ) ) ) )
                                        | ~ ( ~ p105(Y)
                                            & p104(Y) ) )
                                      & ( ( ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ~ p5(X)
                                                      & ~ p105(X)
                                                      & p104(X) ) ) )
                                          & ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( p5(X)
                                                      & ~ p105(X)
                                                      & p104(X) ) ) ) )
                                        | ~ ( ~ p104(Y)
                                            & p103(Y) ) )
                                      & ( ( ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ~ p4(X)
                                                      & ~ p104(X)
                                                      & p103(X) ) ) )
                                          & ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( p4(X)
                                                      & ~ p104(X)
                                                      & p103(X) ) ) ) )
                                        | ~ ( ~ p103(Y)
                                            & p102(Y) ) )
                                      & ( ( ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ~ p3(X)
                                                      & ~ p103(X)
                                                      & p102(X) ) ) )
                                          & ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( p3(X)
                                                      & ~ p103(X)
                                                      & p102(X) ) ) ) )
                                        | ~ ( ~ p102(Y)
                                            & p101(Y) ) )
                                      & ( ( ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( ~ p2(X)
                                                      & ~ p102(X)
                                                      & p101(X) ) ) )
                                          & ~ ( ! [X] :
                                                  ( ~ r1(Y,X)
                                                  | ~ ( p2(X)
                                                      & ~ p102(X)
                                                      & p101(X) ) ) ) )
                                        | ~ ( ~ p101(Y)
                                            & p100(Y) ) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p6(X)
                                                | ~ p105(X) )
                                            | p6(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p6(X)
                                                | ~ p105(X) )
                                            | ~ p6(Y) ) )
                                        | ~ p105(Y) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p5(X)
                                                | ~ p104(X) )
                                            | p5(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p5(X)
                                                | ~ p104(X) )
                                            | ~ p5(Y) ) )
                                        | ~ p104(Y) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p4(X)
                                                | ~ p103(X) )
                                            | p4(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p4(X)
                                                | ~ p103(X) )
                                            | ~ p4(Y) ) )
                                        | ~ p103(Y) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p3(X)
                                                | ~ p102(X) )
                                            | p3(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p3(X)
                                                | ~ p102(X) )
                                            | ~ p3(Y) ) )
                                        | ~ p102(Y) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p2(X)
                                                | ~ p101(X) )
                                            | p2(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p2(X)
                                                | ~ p101(X) )
                                            | ~ p2(Y) ) )
                                        | ~ p101(Y) )
                                      & ( ( ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p1(X)
                                                | ~ p100(X) )
                                            | p1(Y) )
                                          & ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p1(X)
                                                | ~ p100(X) )
                                            | ~ p1(Y) ) )
                                        | ~ p100(Y) )
                                      & ( p105(Y)
                                        | ~ p106(Y) )
                                      & ( p104(Y)
                                        | ~ p105(Y) )
                                      & ( p103(Y)
                                        | ~ p104(Y) )
                                      & ( p102(Y)
                                        | ~ p103(Y) )
                                      & ( p101(Y)
                                        | ~ p102(Y) )
                                      & ( p100(Y)
                                        | ~ p101(Y) ) ) ) ) ) ) )
                & ~ p101(X)
                & p100(X) ) ) ) )).

%------------------------------------------------------------------------------
