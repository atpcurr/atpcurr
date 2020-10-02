%------------------------------------------------------------------------------
% File     : LCL670+1.010 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, formula with T and A4, size 10
% Version  : Especial.
% English  : T{dia p0/p0} & box T{~box dia p0/p0} & A4{dia p0/p0} &
%            box(dia box dia p0 -> (p0 -> box p0)) -> dia box p0 |
%            dia box ~p0.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_t4p_p [BHS00]

% Status   : Theorem
% Rating   : 0.94 v7.3.0, 0.86 v7.2.0, 0.67 v7.1.0, 0.75 v7.0.0, 1.00 v6.3.0, 0.92 v6.2.0, 0.91 v6.1.0, 1.00 v5.2.0, 0.93 v5.0.0, 0.95 v4.1.0, 0.94 v4.0.1, 0.95 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :  230 (   0 equality)
%            Maximal formula depth :   73 (  38 average)
%            Number of connectives :  509 ( 281   ~; 215   |;  13   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    5 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  160 (   0 sgn; 159   !;   1   ?)
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
                    | ~ p4(Y) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ! [X] :
                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                    | ! [Y] :
                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                        | p3(Y) )
                                                                                                                                                    | ~ p2(X) ) ) ) )
                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                | p3(Y) )
                                                                                                                                                            | ~ p2(X) ) ) )
                                                                                                                                                & p2(Y)
                                                                                                                                                & ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ! [Y] :
                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ~ p2(X) ) ) ) ) ) ) ) ) )
                                                                                                                                    | ( ~ ( ! [Y] :
                                                                                                                                              ( ~ r1(X,Y)
                                                                                                                                              | ! [X] :
                                                                                                                                                  ( ~ r1(Y,X)
                                                                                                                                                  | ~ ( ! [Y] :
                                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                                          | ! [X] :
                                                                                                                                                              ( ~ r1(Y,X)
                                                                                                                                                              | p3(X) )
                                                                                                                                                          | ~ p2(Y) ) ) ) ) )
                                                                                                                                      & ! [Y] :
                                                                                                                                          ( ~ r1(X,Y)
                                                                                                                                          | ~ ( ! [X] :
                                                                                                                                                  ( ~ r1(Y,X)
                                                                                                                                                  | ~ p2(X) ) ) ) ) ) ) )
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
                                                    | ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ ( ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p2(X) ) ) ) ) )
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
