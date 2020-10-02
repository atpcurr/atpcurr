%------------------------------------------------------------------------------
% File     : LCL650+1.010 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, black and white polygon with odd number of vertices, size 10
% Version  : Especial.
% English  : If we have a polygon with n vertices, and all the vertices are
%            either black or white, then two adjacent vertices have the same
%            colour.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_poly_p [BHS00]

% Status   : Theorem
% Rating   : 0.81 v7.3.0, 0.86 v7.2.0, 0.83 v7.1.0, 0.75 v7.0.0, 0.71 v6.4.0, 0.86 v6.3.0, 0.77 v6.2.0, 0.73 v6.1.0, 0.84 v6.0.0, 0.25 v5.5.0, 0.79 v5.4.0, 0.78 v5.3.0, 0.83 v5.2.0, 0.71 v5.0.0, 0.80 v4.1.0, 0.83 v4.0.1, 0.79 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  841 (   0 equality)
%            Maximal formula depth :  198 ( 198 average)
%            Number of connectives : 1682 ( 842   ~; 716   |; 124   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   50 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  623 (   0 sgn; 622   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
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
                                                                                                                                            | ( ~ p64(X)
                                                                                                                                              & ~ p62(X)
                                                                                                                                              & ~ p60(X)
                                                                                                                                              & ~ p58(X)
                                                                                                                                              & ~ p56(X)
                                                                                                                                              & ~ p54(X)
                                                                                                                                              & ~ p52(X)
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
                                                                                                                                              & ~ p2(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | p33(Y) )
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
                                                                                                                                        | ! [Y] :
                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                            | ! [X] :
                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ~ ( ( ~ p31(X)
                                                                                                                                                              & ~ p1(X) )
                                                                                                                                                            | ( p1(X)
                                                                                                                                                              & p31(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | p32(X) )
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
                                                                                                                                                | ! [Y] :
                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                    | ! [X] :
                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                        | ! [Y] :
                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                            | ! [X] :
                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                | ~ ( ( ~ p30(X)
                                                                                                                                                                      & ~ p31(X) )
                                                                                                                                                                    | ( p31(X)
                                                                                                                                                                      & p30(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p31(Y) )
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
                                                                                                                                                                | ! [Y] :
                                                                                                                                                                    ( ~ r1(X,Y)
                                                                                                                                                                    | ! [X] :
                                                                                                                                                                        ( ~ r1(Y,X)
                                                                                                                                                                        | ~ ( ( ~ p29(X)
                                                                                                                                                                              & ~ p30(X) )
                                                                                                                                                                            | ( p30(X)
                                                                                                                                                                              & p29(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p30(X) )
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
                                                                                                                                                                        | ! [Y] :
                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                | ~ ( ( ~ p28(X)
                                                                                                                                                                                      & ~ p29(X) )
                                                                                                                                                                                    | ( p29(X)
                                                                                                                                                                                      & p28(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p29(Y) )
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
                                                                                                                                                                                        | ~ ( ( ~ p27(X)
                                                                                                                                                                                              & ~ p28(X) )
                                                                                                                                                                                            | ( p28(X)
                                                                                                                                                                                              & p27(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p28(X) )
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
                                                                                                                                                                                                | ~ ( ( ~ p26(X)
                                                                                                                                                                                                      & ~ p27(X) )
                                                                                                                                                                                                    | ( p27(X)
                                                                                                                                                                                                      & p26(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                        | ~ ( ( ~ p25(X)
                                                                                                                                                                                                              & ~ p26(X) )
                                                                                                                                                                                                            | ( p26(X)
                                                                                                                                                                                                              & p25(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                | ~ ( ( ~ p24(X)
                                                                                                                                                                                                                      & ~ p25(X) )
                                                                                                                                                                                                                    | ( p25(X)
                                                                                                                                                                                                                      & p24(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                        | ~ ( ( ~ p23(X)
                                                                                                                                                                                                                              & ~ p24(X) )
                                                                                                                                                                                                                            | ( p24(X)
                                                                                                                                                                                                                              & p23(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                | ~ ( ( ~ p22(X)
                                                                                                                                                                                                                                      & ~ p23(X) )
                                                                                                                                                                                                                                    | ( p23(X)
                                                                                                                                                                                                                                      & p22(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                        | ~ ( ( ~ p21(X)
                                                                                                                                                                                                                                              & ~ p22(X) )
                                                                                                                                                                                                                                            | ( p22(X)
                                                                                                                                                                                                                                              & p21(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                | ~ ( ( ~ p20(X)
                                                                                                                                                                                                                                                      & ~ p21(X) )
                                                                                                                                                                                                                                                    | ( p21(X)
                                                                                                                                                                                                                                                      & p20(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                        | ~ ( ( ~ p19(X)
                                                                                                                                                                                                                                                              & ~ p20(X) )
                                                                                                                                                                                                                                                            | ( p20(X)
                                                                                                                                                                                                                                                              & p19(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                | ~ ( ( ~ p18(X)
                                                                                                                                                                                                                                                                      & ~ p19(X) )
                                                                                                                                                                                                                                                                    | ( p19(X)
                                                                                                                                                                                                                                                                      & p18(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                        | ~ ( ( ~ p17(X)
                                                                                                                                                                                                                                                                              & ~ p18(X) )
                                                                                                                                                                                                                                                                            | ( p18(X)
                                                                                                                                                                                                                                                                              & p17(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                | ~ ( ( ~ p16(X)
                                                                                                                                                                                                                                                                                      & ~ p17(X) )
                                                                                                                                                                                                                                                                                    | ( p17(X)
                                                                                                                                                                                                                                                                                      & p16(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p15(X)
                                                                                                                                                                                                                                                                                              & ~ p16(X) )
                                                                                                                                                                                                                                                                                            | ( p16(X)
                                                                                                                                                                                                                                                                                              & p15(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p14(X)
                                                                                                                                                                                                                                                                                                      & ~ p15(X) )
                                                                                                                                                                                                                                                                                                    | ( p15(X)
                                                                                                                                                                                                                                                                                                      & p14(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p13(X)
                                                                                                                                                                                                                                                                                                              & ~ p14(X) )
                                                                                                                                                                                                                                                                                                            | ( p14(X)
                                                                                                                                                                                                                                                                                                              & p13(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p12(X)
                                                                                                                                                                                                                                                                                                                      & ~ p13(X) )
                                                                                                                                                                                                                                                                                                                    | ( p13(X)
                                                                                                                                                                                                                                                                                                                      & p12(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p11(X)
                                                                                                                                                                                                                                                                                                                              & ~ p12(X) )
                                                                                                                                                                                                                                                                                                                            | ( p12(X)
                                                                                                                                                                                                                                                                                                                              & p11(X) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p10(X)
                                                                                                                                                                                                                                                                                                                                      & ~ p11(X) )
                                                                                                                                                                                                                                                                                                                                    | ( p11(X)
                                                                                                                                                                                                                                                                                                                                      & p10(X) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p9(X)
                                                                                                                                                                                                                                                                                                                                              & ~ p10(X) )
                                                                                                                                                                                                                                                                                                                                            | ( p10(X)
                                                                                                                                                                                                                                                                                                                                              & p9(X) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p8(X)
                                                                                                                                                                                                                                                                                                                                                      & ~ p9(X) )
                                                                                                                                                                                                                                                                                                                                                    | ( p9(X)
                                                                                                                                                                                                                                                                                                                                                      & p8(X) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p7(X)
                                                                                                                                                                                                                                                                                                                                                              & ~ p8(X) )
                                                                                                                                                                                                                                                                                                                                                            | ( p8(X)
                                                                                                                                                                                                                                                                                                                                                              & p7(X) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p6(X)
                                                                                                                                                                                                                                                                                                                                                                      & ~ p7(X) )
                                                                                                                                                                                                                                                                                                                                                                    | ( p7(X)
                                                                                                                                                                                                                                                                                                                                                                      & p6(X) ) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p5(X)
                                                                                                                                                                                                                                                                                                                                                                              & ~ p6(X) )
                                                                                                                                                                                                                                                                                                                                                                            | ( p6(X)
                                                                                                                                                                                                                                                                                                                                                                              & p5(X) ) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p4(X)
                                                                                                                                                                                                                                                                                                                                                                                      & ~ p5(X) )
                                                                                                                                                                                                                                                                                                                                                                                    | ( p5(X)
                                                                                                                                                                                                                                                                                                                                                                                      & p4(X) ) ) ) ) ) ) )
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
                                                                                                                                                                                                                                                                                                                                                                                        | ~ ( ( ~ p3(X)
                                                                                                                                                                                                                                                                                                                                                                                              & ~ p4(X) )
                                                                                                                                                                                                                                                                                                                                                                                            | ( p4(X)
                                                                                                                                                                                                                                                                                                                                                                                              & p3(X) ) ) ) ) ) )
                                                                                                                                                                                                                                                                                                                                                                        | ! [X] :
                                                                                                                                                                                                                                                                                                                                                                            ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                                                            | p4(X) )
                                                                                                                                                                                                                                                                                                                                                                        | ~ ( ! [X] :
                                                                                                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                                                                                            | ! [X] :
                                                                                                                                                                                                                                                                                                                                                                                                ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                                                                                | ~ ( ( ~ p2(X)
                                                                                                                                                                                                                                                                                                                                                                                                      & ~ p3(X) )
                                                                                                                                                                                                                                                                                                                                                                                                    | ( p3(X)
                                                                                                                                                                                                                                                                                                                                                                                                      & p2(X) ) ) ) ) )
                                                                                                                                                                                                                                                                                                                                                                                    | ! [Y] :
                                                                                                                                                                                                                                                                                                                                                                                        ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                                                                                        | p3(Y) )
                                                                                                                                                                                                                                                                                                                                                                                    | ~ ( ! [Y] :
                                                                                                                                                                                                                                                                                                                                                                                            ( ~ r1(X,Y)
                                                                                                                                                                                                                                                                                                                                                                                            | ~ ~ ( ! [X] :
                                                                                                                                                                                                                                                                                                                                                                                                      ( ~ r1(Y,X)
                                                                                                                                                                                                                                                                                                                                                                                                      | ~ ( ( ~ p1(X)
                                                                                                                                                                                                                                                                                                                                                                                                            & ~ p2(X) )
                                                                                                                                                                                                                                                                                                                                                                                                          | ( p2(X)
                                                                                                                                                                                                                                                                                                                                                                                                            & p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                                            | ( p32(X)
                                                                                                                                              & p31(X)
                                                                                                                                              & p30(X)
                                                                                                                                              & p29(X)
                                                                                                                                              & p28(X)
                                                                                                                                              & p27(X)
                                                                                                                                              & p26(X)
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
                                                                                                                                              & p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
