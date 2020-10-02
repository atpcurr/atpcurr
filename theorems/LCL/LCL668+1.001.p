%------------------------------------------------------------------------------
% File     : LCL668+1.001 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, black and white polygon with odd number of vertices, size 1
% Version  : Especial.
% English  : If we have a polygon with n vertices, and all the vertices are
%            either black or white, then two adjacent vertices have the same
%            colour.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_poly_p [BHS00]

% Status   : Theorem
% Rating   : 0.00 v7.0.0, 0.07 v6.4.0, 0.00 v6.2.0, 0.09 v6.1.0, 0.16 v6.0.0, 0.25 v5.5.0, 0.33 v5.4.0, 0.30 v5.2.0, 0.07 v5.0.0, 0.25 v4.1.0, 0.28 v4.0.1, 0.26 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :   85 (   0 equality)
%            Maximal formula depth :   46 (  24 average)
%            Number of connectives :  168 (  85   ~;  63   |;  20   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   11 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   49 (   0 sgn;  48   !;   1   ?)
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
                                    | ( ~ p12(X)
                                      & ~ p10(X)
                                      & ~ p8(X)
                                      & ~ p6(X)
                                      & ~ p4(X)
                                      & ~ p2(X) ) ) ) ) ) ) )
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
                                                              & ~ p1(X) )
                                                            | ( p1(X)
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
                                                                                            & p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ( p6(X)
                                      & p5(X)
                                      & p4(X)
                                      & p3(X)
                                      & p2(X)
                                      & p1(X) ) ) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
