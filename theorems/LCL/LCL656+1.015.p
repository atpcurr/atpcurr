%------------------------------------------------------------------------------
% File     : LCL656+1.015 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, the branching formula made provable, size 15
% Version  : Especial.
% English  : The branching formula plus a negation symbol in front and an
%            additional subformula to make the formula provable.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_branch_p [BHS00]

% Status   : Theorem
% Rating   : 0.38 v7.3.0, 0.29 v7.2.0, 0.17 v7.1.0, 0.25 v7.0.0, 0.43 v6.4.0, 0.57 v6.3.0, 0.62 v6.2.0, 0.82 v6.1.0, 0.88 v6.0.0, 0.50 v5.5.0, 0.88 v5.4.0, 0.87 v5.3.0, 0.91 v5.2.0, 0.86 v5.0.0, 0.85 v4.1.0, 0.89 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :  360 (   0 equality)
%            Maximal formula depth :   85 (  44 average)
%            Number of connectives :  686 ( 328   ~; 204   |; 154   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   34 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   94 (   0 sgn;  93   !;   1   ?)
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
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | p7(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
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
                                                                                          | ~ ( ~ p16(X)
                                                                                              & ~ p116(X)
                                                                                              & p115(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p16(X)
                                                                                              & ~ p116(X)
                                                                                              & p115(X) ) ) ) )
                                                                                | ~ ( ~ p115(Y)
                                                                                    & p114(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p15(X)
                                                                                              & ~ p115(X)
                                                                                              & p114(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p15(X)
                                                                                              & ~ p115(X)
                                                                                              & p114(X) ) ) ) )
                                                                                | ~ ( ~ p114(Y)
                                                                                    & p113(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p14(X)
                                                                                              & ~ p114(X)
                                                                                              & p113(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p14(X)
                                                                                              & ~ p114(X)
                                                                                              & p113(X) ) ) ) )
                                                                                | ~ ( ~ p113(Y)
                                                                                    & p112(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p13(X)
                                                                                              & ~ p113(X)
                                                                                              & p112(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p13(X)
                                                                                              & ~ p113(X)
                                                                                              & p112(X) ) ) ) )
                                                                                | ~ ( ~ p112(Y)
                                                                                    & p111(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p12(X)
                                                                                              & ~ p112(X)
                                                                                              & p111(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p12(X)
                                                                                              & ~ p112(X)
                                                                                              & p111(X) ) ) ) )
                                                                                | ~ ( ~ p111(Y)
                                                                                    & p110(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p11(X)
                                                                                              & ~ p111(X)
                                                                                              & p110(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p11(X)
                                                                                              & ~ p111(X)
                                                                                              & p110(X) ) ) ) )
                                                                                | ~ ( ~ p110(Y)
                                                                                    & p109(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p10(X)
                                                                                              & ~ p110(X)
                                                                                              & p109(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p10(X)
                                                                                              & ~ p110(X)
                                                                                              & p109(X) ) ) ) )
                                                                                | ~ ( ~ p109(Y)
                                                                                    & p108(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p9(X)
                                                                                              & ~ p109(X)
                                                                                              & p108(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p9(X)
                                                                                              & ~ p109(X)
                                                                                              & p108(X) ) ) ) )
                                                                                | ~ ( ~ p108(Y)
                                                                                    & p107(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p8(X)
                                                                                              & ~ p108(X)
                                                                                              & p107(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p8(X)
                                                                                              & ~ p108(X)
                                                                                              & p107(X) ) ) ) )
                                                                                | ~ ( ~ p107(Y)
                                                                                    & p106(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( ~ p7(X)
                                                                                              & ~ p107(X)
                                                                                              & p106(X) ) ) )
                                                                                  & ~ ( ! [X] :
                                                                                          ( ~ r1(Y,X)
                                                                                          | ~ ( p7(X)
                                                                                              & ~ p107(X)
                                                                                              & p106(X) ) ) ) )
                                                                                | ~ ( ~ p106(Y)
                                                                                    & p105(Y) ) )
                                                                              & ( ( ~ ( ! [X] :
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
                                                                                        | ~ p16(X)
                                                                                        | ~ p115(X) )
                                                                                    | p16(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p16(X)
                                                                                        | ~ p115(X) )
                                                                                    | ~ p16(Y) ) )
                                                                                | ~ p115(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p15(X)
                                                                                        | ~ p114(X) )
                                                                                    | p15(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p15(X)
                                                                                        | ~ p114(X) )
                                                                                    | ~ p15(Y) ) )
                                                                                | ~ p114(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p14(X)
                                                                                        | ~ p113(X) )
                                                                                    | p14(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p14(X)
                                                                                        | ~ p113(X) )
                                                                                    | ~ p14(Y) ) )
                                                                                | ~ p113(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p13(X)
                                                                                        | ~ p112(X) )
                                                                                    | p13(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p13(X)
                                                                                        | ~ p112(X) )
                                                                                    | ~ p13(Y) ) )
                                                                                | ~ p112(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p12(X)
                                                                                        | ~ p111(X) )
                                                                                    | p12(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p12(X)
                                                                                        | ~ p111(X) )
                                                                                    | ~ p12(Y) ) )
                                                                                | ~ p111(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p11(X)
                                                                                        | ~ p110(X) )
                                                                                    | p11(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p11(X)
                                                                                        | ~ p110(X) )
                                                                                    | ~ p11(Y) ) )
                                                                                | ~ p110(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p10(X)
                                                                                        | ~ p109(X) )
                                                                                    | p10(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p10(X)
                                                                                        | ~ p109(X) )
                                                                                    | ~ p10(Y) ) )
                                                                                | ~ p109(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p9(X)
                                                                                        | ~ p108(X) )
                                                                                    | p9(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p9(X)
                                                                                        | ~ p108(X) )
                                                                                    | ~ p9(Y) ) )
                                                                                | ~ p108(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p8(X)
                                                                                        | ~ p107(X) )
                                                                                    | p8(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p8(X)
                                                                                        | ~ p107(X) )
                                                                                    | ~ p8(Y) ) )
                                                                                | ~ p107(Y) )
                                                                              & ( ( ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p7(X)
                                                                                        | ~ p106(X) )
                                                                                    | p7(Y) )
                                                                                  & ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p7(X)
                                                                                        | ~ p106(X) )
                                                                                    | ~ p7(Y) ) )
                                                                                | ~ p106(Y) )
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
                                                                              & ( p115(Y)
                                                                                | ~ p116(Y) )
                                                                              & ( p114(Y)
                                                                                | ~ p115(Y) )
                                                                              & ( p113(Y)
                                                                                | ~ p114(Y) )
                                                                              & ( p112(Y)
                                                                                | ~ p113(Y) )
                                                                              & ( p111(Y)
                                                                                | ~ p112(Y) )
                                                                              & ( p110(Y)
                                                                                | ~ p111(Y) )
                                                                              & ( p109(Y)
                                                                                | ~ p110(Y) )
                                                                              & ( p108(Y)
                                                                                | ~ p109(Y) )
                                                                              & ( p107(Y)
                                                                                | ~ p108(Y) )
                                                                              & ( p106(Y)
                                                                                | ~ p107(Y) )
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
                                                                                | ~ p101(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                & ~ p101(X)
                & p100(X) ) ) ) )).

%------------------------------------------------------------------------------
