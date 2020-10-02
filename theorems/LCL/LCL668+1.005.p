%------------------------------------------------------------------------------
% File     : LCL668+1.005 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, black and white polygon with odd number of vertices, size 5
% Version  : Especial.
% English  : If we have a polygon with n vertices, and all the vertices are
%            either black or white, then two adjacent vertices have the same
%            colour.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_poly_p [BHS00]

% Status   : Theorem
% Rating   : 0.44 v7.3.0, 0.43 v7.2.0, 0.17 v7.1.0, 0.25 v7.0.0, 0.57 v6.3.0, 0.69 v6.2.0, 0.73 v6.1.0, 0.88 v6.0.0, 0.50 v5.5.0, 0.92 v5.4.0, 0.87 v5.3.0, 0.91 v5.2.0, 0.71 v5.0.0, 0.90 v4.1.0, 0.94 v4.0.1, 0.89 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :  655 (   0 equality)
%            Maximal formula depth :  166 (  84 average)
%            Number of connectives : 1308 ( 655   ~; 553   |; 100   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   41 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  479 (   0 sgn; 478   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(reflexivity,axiom,(
    ! [X] : r1(X,X) )).

fof(main,conjecture,(
    ~ ( ? [X] :
          ~ ( ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | ! [X] :
                                                                                                            ( ~ r1(Y,X)
                                                                                                            | ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | ! [X] :
                                                                                                                    ( ~ r1(Y,X)
                                                                                                                    | ( ~ p52(X)
                                                                                                                      & ~ p50(X)
                                                                                                                      & ~ p48(X)
                                                                                                                      & ~ p46(X)
                                                                                                                      & ~ p44(X)
                                                                                                                      & ~ p42(X)
                                                                                                                      & ~ p40(X)
                                                                                                                      & ~ p38(X)
                                                                                                                      & ~ p36(X)
                                                                                                                      & ~ p34(X)
                                                                                                                      & ~ p32(X)
                                                                                                                      & ~ p30(X)
                                                                                                                      & ~ p28(X)
                                                                                                                      & ~ p26(X)
                                                                                                                      & ~ p24(X)
                                                                                                                      & ~ p22(X)
                                                                                                                      & ~ p20(X)
                                                                                                                      & ~ p18(X)
                                                                                                                      & ~ p16(X)
                                                                                                                      & ~ p14(X)
                                                                                                                      & ~ p12(X)
                                                                                                                      & ~ p10(X)
                                                                                                                      & ~ p8(X)
                                                                                                                      & ~ p6(X)
                                                                                                                      & ~ p4(X)
                                                                                                                      & ~ p2(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | p27(Y) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ~ ( ( ~ p25(X)
                                                                                                                                              & ~ p1(X) )
                                                                                                                                            | ( p1(X)
                                                                                                                                              & p25(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | p26(X) )
                        | ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ~ ( ( ~ p24(X)
                                                                                                                                                      & ~ p25(X) )
                                                                                                                                                    | ( p25(X)
                                                                                                                                                      & p24(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p25(Y) )
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ( ~ p23(X)
                                                                                                                                                              & ~ p24(X) )
                                                                                                                                                            | ( p24(X)
                                                                                                                                                              & p23(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p24(X) )
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ~ ( ( ~ p22(X)
                                                                                                                                                                      & ~ p23(X) )
                                                                                                                                                                    | ( p23(X)
                                                                                                                                                                      & p22(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p23(Y) )
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ~ ( ( ~ p21(X)
                                                                                                                                                                              & ~ p22(X) )
                                                                                                                                                                            | ( p22(X)
                                                                                                                                                                              & p21(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p22(X) )
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ( ~ p20(X)
                                                                                                                                                                                      & ~ p21(X) )
                                                                                                                                                                                    | ( p21(X)
                                                                                                                                                                                      & p20(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                    | ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p21(Y) )
                                                                                    | ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ~ ( ( ~ p19(X)
                                                                                                                                                                                              & ~ p20(X) )
                                                                                                                                                                                            | ( p20(X)
                                                                                                                                                                                              & p19(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                | ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p20(X) )
                                                                                                | ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ~ ( ( ~ p18(X)
                                                                                                                                                                                                      & ~ p19(X) )
                                                                                                                                                                                                    | ( p19(X)
                                                                                                                                                                                                      & p18(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                            | ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | p19(Y) )
                                                                                                            | ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ! [Y] :
                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                    | ! [X] :
                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ~ ( ( ~ p17(X)
                                                                                                                                                                                                              & ~ p18(X) )
                                                                                                                                                                                                            | ( p18(X)
                                                                                                                                                                                                              & p17(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                        | ! [X] :
                                                                                                                            ( ~ r1(Y,X)
                                                                                                                            | p18(X) )
                                                                                                                        | ~ ( ! [X] :
                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ~ ( ( ~ p16(X)
                                                                                                                                                                                                                      & ~ p17(X) )
                                                                                                                                                                                                                    | ( p17(X)
                                                                                                                                                                                                                      & p16(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                    | ! [Y] :
                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                        | p17(Y) )
                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ~ ( ( ~ p15(X)
                                                                                                                                                                                                                              & ~ p16(X) )
                                                                                                                                                                                                                            | ( p16(X)
                                                                                                                                                                                                                              & p15(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                | ! [X] :
                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                    | p16(X) )
                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ~ ( ( ~ p14(X)
                                                                                                                                                                                                                                      & ~ p15(X) )
                                                                                                                                                                                                                                    | ( p15(X)
                                                                                                                                                                                                                                      & p14(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                            | ! [Y] :
                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                | p15(Y) )
                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                        | ~ ( ( ~ p13(X)
                                                                                                                                                                                                                                              & ~ p14(X) )
                                                                                                                                                                                                                                            | ( p14(X)
                                                                                                                                                                                                                                              & p13(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                        | ! [X] :
                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                            | p14(X) )
                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                | ~ ( ( ~ p12(X)
                                                                                                                                                                                                                                                      & ~ p13(X) )
                                                                                                                                                                                                                                                    | ( p13(X)
                                                                                                                                                                                                                                                      & p12(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                    | ! [Y] :
                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                        | p13(Y) )
                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ~ ( ( ~ p11(X)
                                                                                                                                                                                                                                                              & ~ p12(X) )
                                                                                                                                                                                                                                                            | ( p12(X)
                                                                                                                                                                                                                                                              & p11(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                | ! [X] :
                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                    | p12(X) )
                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                | ~ ( ( ~ p10(X)
                                                                                                                                                                                                                                                                      & ~ p11(X) )
                                                                                                                                                                                                                                                                    | ( p11(X)
                                                                                                                                                                                                                                                                      & p10(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                            | ! [Y] :
                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                | p11(Y) )
                                                                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                        | ~ ( ( ~ p9(X)
                                                                                                                                                                                                                                                                              & ~ p10(X) )
                                                                                                                                                                                                                                                                            | ( p10(X)
                                                                                                                                                                                                                                                                              & p9(X) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                        | ! [X] :
                                                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                                                            | p10(X) )
                                                                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                | ~ ( ( ~ p8(X)
                                                                                                                                                                                                                                                                                      & ~ p9(X) )
                                                                                                                                                                                                                                                                                    | ( p9(X)
                                                                                                                                                                                                                                                                                      & p8(X) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                    | ! [Y] :
                                                                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                                                                        | p9(Y) )
                                                                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p7(X)
                                                                                                                                                                                                                                                                                              & ~ p8(X) )
                                                                                                                                                                                                                                                                                            | ( p8(X)
                                                                                                                                                                                                                                                                                              & p7(X) ) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                | ! [X] :
                                                                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                                                                    | p8(X) )
                                                                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p6(X)
                                                                                                                                                                                                                                                                                                      & ~ p7(X) )
                                                                                                                                                                                                                                                                                                    | ( p7(X)
                                                                                                                                                                                                                                                                                                      & p6(X) ) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                            | ! [Y] :
                                                                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                | p7(Y) )
                                                                                                                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p5(X)
                                                                                                                                                                                                                                                                                                              & ~ p6(X) )
                                                                                                                                                                                                                                                                                                            | ( p6(X)
                                                                                                                                                                                                                                                                                                              & p5(X) ) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                                        | ! [X] :
                                                                                                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                            | p6(X) )
                                                                                                                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p4(X)
                                                                                                                                                                                                                                                                                                                      & ~ p5(X) )
                                                                                                                                                                                                                                                                                                                    | ( p5(X)
                                                                                                                                                                                                                                                                                                                      & p4(X) ) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                                                    | ! [Y] :
                                                                                                                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                        | p5(Y) )
                                                                                                                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                | ! [Y] :
                                                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p3(X)
                                                                                                                                                                                                                                                                                                                              & ~ p4(X) )
                                                                                                                                                                                                                                                                                                                            | ( p4(X)
                                                                                                                                                                                                                                                                                                                              & p3(X) ) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                                                                | ! [X] :
                                                                                                                                                                                                                                                                                                    ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                    | p4(X) )
                                                                                                                                                                                                                                                                                                | ~ ( ! [X] :
                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                    | ! [X] :
                                                                                                                                                                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p2(X)
                                                                                                                                                                                                                                                                                                                                      & ~ p3(X) )
                                                                                                                                                                                                                                                                                                                                    | ( p3(X)
                                                                                                                                                                                                                                                                                                                                      & p2(X) ) ) ) ) ) ) )
                                                                                                                                                                                                                                                                                                            | ! [Y] :
                                                                                                                                                                                                                                                                                                                ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                | p3(Y) )
                                                                                                                                                                                                                                                                                                            | ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                    | ~ ~ ( ! [X] :
                                                                                                                                                                                                                                                                                                                              ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                              | ! [Y] :
                                                                                                                                                                                                                                                                                                                                  ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                                  | ! [X] :
                                                                                                                                                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                      | ~ ( ( ~ p1(X)
                                                                                                                                                                                                                                                                                                                                            & ~ p2(X) )
                                                                                                                                                                                                                                                                                                                                          | ( p2(X)
                                                                                                                                                                                                                                                                                                                                            & p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | ! [X] :
                                                                                                            ( ~ r1(Y,X)
                                                                                                            | ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | ! [X] :
                                                                                                                    ( ~ r1(Y,X)
                                                                                                                    | ( p26(X)
                                                                                                                      & p25(X)
                                                                                                                      & p24(X)
                                                                                                                      & p23(X)
                                                                                                                      & p22(X)
                                                                                                                      & p21(X)
                                                                                                                      & p20(X)
                                                                                                                      & p19(X)
                                                                                                                      & p18(X)
                                                                                                                      & p17(X)
                                                                                                                      & p16(X)
                                                                                                                      & p15(X)
                                                                                                                      & p14(X)
                                                                                                                      & p13(X)
                                                                                                                      & p12(X)
                                                                                                                      & p11(X)
                                                                                                                      & p10(X)
                                                                                                                      & p9(X)
                                                                                                                      & p8(X)
                                                                                                                      & p7(X)
                                                                                                                      & p6(X)
                                                                                                                      & p5(X)
                                                                                                                      & p4(X)
                                                                                                                      & p3(X)
                                                                                                                      & p2(X)
                                                                                                                      & p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
