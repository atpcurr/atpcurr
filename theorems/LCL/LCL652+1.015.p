%------------------------------------------------------------------------------
% File     : LCL652+1.015 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, formula with T and A4, size 15
% Version  : Especial.
% English  : T{dia p0/p0} & box T{~box dia p0/p0} & A4{dia p0/p0} &
%            box(dia box dia p0 -> (p0 -> box p0)) -> dia box p0 |
%            dia box ~p0.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_t4p_p [BHS00]

% Status   : Theorem
% Rating   : 0.62 v7.3.0, 0.57 v7.2.0, 0.67 v7.1.0, 0.75 v7.0.0, 0.71 v6.3.0, 0.69 v6.2.0, 0.82 v6.1.0, 0.92 v6.0.0, 0.75 v5.5.0, 0.92 v5.4.0, 1.00 v5.2.0, 0.93 v5.0.0, 0.95 v4.1.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  466 (   0 equality)
%            Maximal formula depth :  116 ( 116 average)
%            Number of connectives : 1082 ( 617   ~; 430   |;  35   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  330 (   0 sgn; 329   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,(
    ~ ( ? [X] :
          ~ ( ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ p4(Y) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ! [X] :
                                            ( ~ r1(Y,X)
                                            | ~ p1(X) ) ) ) ) )
                        & ! [X] :
                            ( ~ r1(Y,X)
                            | ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ p1(Y) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ ( ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ p1(Y) ) ) ) ) )
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p1(X) ) ) ) ) ) )
                        | ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ ( ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ~ p1(X) ) ) ) ) )
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ p1(Y) ) ) ) ) ) )
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ ( ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ~ p1(Y) ) ) ) ) )
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ p1(X) ) ) ) ) ) )
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | ~ p1(X) ) ) ) ) )
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ~ ( ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | ~ p1(Y) ) ) ) ) )
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ~ p1(X) ) ) ) ) ) )
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ ( ! [X] :
                                                                                                                    ( ~ r1(Y,X)
                                                                                                                    | ~ p1(X) ) ) ) ) )
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                                    | ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                | ~ p1(Y) ) ) ) ) )
                                                                                                            & ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | ~ ( ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ~ p1(X) ) ) ) ) ) )
                                                                                                | ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ~ ( ! [X] :
                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                            | ~ p1(X) ) ) ) ) )
                                                                                                                        & ! [X] :
                                                                                                                            ( ~ r1(Y,X)
                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                                                                            | ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ~ ( ! [Y] :
                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                        | ~ p1(Y) ) ) ) ) )
                                                                                                                                    & ! [Y] :
                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ~ p1(X) ) ) ) ) ) )
                                                                                                                        | ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ~ ( ! [X] :
                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                    | ~ p1(X) ) ) ) ) )
                                                                                                                                                & ! [X] :
                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                | ~ p1(Y) ) ) ) ) )
                                                                                                                                                            & ! [Y] :
                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ~ p1(X) ) ) ) ) ) )
                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ~ ( ! [X] :
                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                            | ~ p1(X) ) ) ) ) )
                                                                                                                                                                        & ! [X] :
                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ~ ( ! [Y] :
                                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                                        | ~ p1(Y) ) ) ) ) )
                                                                                                                                                                                    & ! [Y] :
                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ~ p1(X) ) ) ) ) ) )
                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ~ ( ! [X] :
                                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                                    | ~ p1(X) ) ) ) ) )
                                                                                                                                                                                                & ! [X] :
                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                | ! [X] :
                                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                                    | p3(X) )
                                                                                                                                                                                                                | ~ p2(Y) ) ) ) )
                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ~ ( ! [X] :
                                                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                                                            | p3(X) )
                                                                                                                                                                                                                        | ~ p2(Y) ) ) )
                                                                                                                                                                                                            & p2(X)
                                                                                                                                                                                                            & ~ ( ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ~ ( ! [X] :
                                                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ~ p2(Y) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                | ( ~ ( ! [X] :
                                                                                                                                                                                                          ( ~ r1(Y,X)
                                                                                                                                                                                                          | ! [Y] :
                                                                                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                                                                                              | ~ ( ! [X] :
                                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                                      | ! [Y] :
                                                                                                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                                                                                                          | p3(Y) )
                                                                                                                                                                                                                      | ~ p2(X) ) ) ) ) )
                                                                                                                                                                                                  & ! [X] :
                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                      | ~ ( ! [Y] :
                                                                                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                                                                                              | ~ p2(Y) ) ) ) )
                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ~ p2(X) ) ) )
                                                                                                                                                                                                            & ! [Y] :
                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                                | ! [X] :
                                                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                                                    | p3(X) )
                                                                                                                                                                                                                                | ~ p2(Y) ) ) ) ) ) ) ) )
                                                                                                                                                                                                | ( ! [X] :
                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                      | ! [Y] :
                                                                                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                                                                                          | p3(Y) )
                                                                                                                                                                                                      | ~ p2(X) )
                                                                                                                                                                                                  & ! [X] :
                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                      | ~ ( ! [Y] :
                                                                                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                                                                                              | ~ p2(Y) ) ) ) ) ) ) )
                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | p1(Y) ) ) )
                                                                                                                                                                                                & ! [X] :
                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                    | p1(X) ) ) ) ) ) ) )
                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | p1(X) ) ) )
                                                                                                                                                                                    & ! [Y] :
                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                        | p1(Y) ) ) ) ) ) ) )
                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | p1(Y) ) ) )
                                                                                                                                                                        & ! [X] :
                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                            | p1(X) ) ) ) ) ) ) )
                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | p1(X) ) ) )
                                                                                                                                                            & ! [Y] :
                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                | p1(Y) ) ) ) ) ) ) )
                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | p1(Y) ) ) )
                                                                                                                                                & ! [X] :
                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                    | p1(X) ) ) ) ) ) ) )
                                                                                                                        | ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | p1(X) ) ) )
                                                                                                                                    & ! [Y] :
                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                        | p1(Y) ) ) ) ) ) ) )
                                                                                                            | ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | p1(Y) ) ) )
                                                                                                                        & ! [X] :
                                                                                                                            ( ~ r1(Y,X)
                                                                                                                            | p1(X) ) ) ) ) ) ) )
                                                                                                | ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | p1(X) ) ) )
                                                                                                            & ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | p1(Y) ) ) ) ) ) ) )
                                                                                    | ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p1(Y) ) ) )
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X) ) ) ) ) ) ) )
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | p1(X) ) ) )
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y) ) ) ) ) ) ) )
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | p1(Y) ) ) )
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X) ) ) ) ) ) ) )
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | p1(X) ) ) )
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y) ) ) ) ) ) ) )
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | p1(Y) ) ) )
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X) ) ) ) ) ) ) )
                        | ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | p1(X) ) ) )
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p1(Y) ) ) )
                        & ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ~ ( ! [Y] :
                            ( ~ r1(X,Y)
                            | p1(Y) ) ) )
                | ! [X] :
                    ( ~ r1(Y,X)
                    | p1(X) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | p1(X) ) ) )
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | p1(Y) ) )
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p1(Y) ) ) )
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X) ) )
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) ) ) )
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) )
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p1(Y) ) ) )
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) ) )
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p1(X) ) ) )
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) ) )
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | p1(Y) ) ) )
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) ) )
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | p1(X) ) ) )
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y) ) )
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | p1(Y) ) ) )
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X) ) )
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | p1(X) ) ) )
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y) ) )
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | p1(Y) ) ) )
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X) ) )
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | p1(X) ) ) )
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y) ) )
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | p1(Y) ) ) )
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X) ) )
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | p1(X) ) ) )
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y) ) )
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | p1(Y) ) ) )
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X) ) )
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p2(Y) ) ) ) ) )
                                                                    | ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ p1(Y) ) )
                                                                            | ~ ( ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | ~ p1(X) ) ) ) ) )
                                                                | ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ p1(X) ) )
                                                                        | ~ ( ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ~ p1(Y) ) ) ) ) )
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ p1(Y) ) )
                                                                    | ~ ( ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ p1(X) ) ) ) ) )
                                                        | ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ p1(X) ) )
                                                                | ~ ( ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ p1(Y) ) ) ) ) )
                                                    | ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ p1(Y) ) )
                                                            | ~ ( ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ~ p1(X) ) ) ) ) )
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ~ p1(X) ) )
                                                        | ~ ( ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ p1(Y) ) ) ) ) )
                                            | ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ p1(Y) ) )
                                                    | ~ ( ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ p1(X) ) ) ) ) )
                                        | ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ p1(X) ) )
                                                | ~ ( ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ p1(Y) ) ) ) ) )
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ p1(Y) ) )
                                            | ~ ( ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ~ p1(X) ) ) ) ) )
                                | ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p1(X) ) )
                                        | ~ ( ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ~ p1(Y) ) ) ) ) )
                            | ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ p1(Y) ) )
                                    | ~ ( ! [X] :
                                            ( ~ r1(Y,X)
                                            | ~ p1(X) ) ) ) ) )
                        | ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ p1(X) ) )
                                | ~ ( ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ~ p1(Y) ) ) ) ) )
                    | ~ ( ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ p1(Y) ) )
                            | ~ ( ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ p1(X) ) ) ) ) )
                | ~ ( ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ~ p1(X) ) )
                        | ~ ( ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p1(Y) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ p1(Y) ) )
                    | ~ ( ! [X] :
                            ( ~ r1(Y,X)
                            | ~ p1(X) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
