%------------------------------------------------------------------------------
% File     : LCL656+1.020 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, the branching formula made provable, size 20
% Version  : Especial.
% English  : The branching formula plus a negation symbol in front and an
%            additional subformula to make the formula provable.

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_branch_p [BHS00]

% Status   : Theorem
% Rating   : 0.56 v7.3.0, 0.57 v7.2.0, 0.50 v7.0.0, 0.57 v6.4.0, 0.71 v6.3.0, 0.69 v6.2.0, 0.82 v6.1.0, 0.92 v6.0.0, 0.50 v5.5.0, 0.92 v5.4.0, 0.96 v5.3.0, 1.00 v5.2.0, 0.93 v5.0.0, 0.90 v4.1.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       :  475 (   0 equality)
%            Maximal formula depth :  110 (  56 average)
%            Number of connectives :  906 ( 433   ~; 269   |; 204   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   44 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :  124 (   0 sgn; 123   !;   1   ?)
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
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | p8(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ( ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p21(Y)
                                                                                                                  & ~ p121(Y)
                                                                                                                  & p120(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p21(Y)
                                                                                                                  & ~ p121(Y)
                                                                                                                  & p120(Y) ) ) ) )
                                                                                                    | ~ ( ~ p120(X)
                                                                                                        & p119(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p20(Y)
                                                                                                                  & ~ p120(Y)
                                                                                                                  & p119(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p20(Y)
                                                                                                                  & ~ p120(Y)
                                                                                                                  & p119(Y) ) ) ) )
                                                                                                    | ~ ( ~ p119(X)
                                                                                                        & p118(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p19(Y)
                                                                                                                  & ~ p119(Y)
                                                                                                                  & p118(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p19(Y)
                                                                                                                  & ~ p119(Y)
                                                                                                                  & p118(Y) ) ) ) )
                                                                                                    | ~ ( ~ p118(X)
                                                                                                        & p117(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p18(Y)
                                                                                                                  & ~ p118(Y)
                                                                                                                  & p117(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p18(Y)
                                                                                                                  & ~ p118(Y)
                                                                                                                  & p117(Y) ) ) ) )
                                                                                                    | ~ ( ~ p117(X)
                                                                                                        & p116(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p17(Y)
                                                                                                                  & ~ p117(Y)
                                                                                                                  & p116(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p17(Y)
                                                                                                                  & ~ p117(Y)
                                                                                                                  & p116(Y) ) ) ) )
                                                                                                    | ~ ( ~ p116(X)
                                                                                                        & p115(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p16(Y)
                                                                                                                  & ~ p116(Y)
                                                                                                                  & p115(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p16(Y)
                                                                                                                  & ~ p116(Y)
                                                                                                                  & p115(Y) ) ) ) )
                                                                                                    | ~ ( ~ p115(X)
                                                                                                        & p114(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p15(Y)
                                                                                                                  & ~ p115(Y)
                                                                                                                  & p114(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p15(Y)
                                                                                                                  & ~ p115(Y)
                                                                                                                  & p114(Y) ) ) ) )
                                                                                                    | ~ ( ~ p114(X)
                                                                                                        & p113(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p14(Y)
                                                                                                                  & ~ p114(Y)
                                                                                                                  & p113(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p14(Y)
                                                                                                                  & ~ p114(Y)
                                                                                                                  & p113(Y) ) ) ) )
                                                                                                    | ~ ( ~ p113(X)
                                                                                                        & p112(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p13(Y)
                                                                                                                  & ~ p113(Y)
                                                                                                                  & p112(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p13(Y)
                                                                                                                  & ~ p113(Y)
                                                                                                                  & p112(Y) ) ) ) )
                                                                                                    | ~ ( ~ p112(X)
                                                                                                        & p111(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p12(Y)
                                                                                                                  & ~ p112(Y)
                                                                                                                  & p111(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p12(Y)
                                                                                                                  & ~ p112(Y)
                                                                                                                  & p111(Y) ) ) ) )
                                                                                                    | ~ ( ~ p111(X)
                                                                                                        & p110(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p11(Y)
                                                                                                                  & ~ p111(Y)
                                                                                                                  & p110(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p11(Y)
                                                                                                                  & ~ p111(Y)
                                                                                                                  & p110(Y) ) ) ) )
                                                                                                    | ~ ( ~ p110(X)
                                                                                                        & p109(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p10(Y)
                                                                                                                  & ~ p110(Y)
                                                                                                                  & p109(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p10(Y)
                                                                                                                  & ~ p110(Y)
                                                                                                                  & p109(Y) ) ) ) )
                                                                                                    | ~ ( ~ p109(X)
                                                                                                        & p108(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p9(Y)
                                                                                                                  & ~ p109(Y)
                                                                                                                  & p108(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p9(Y)
                                                                                                                  & ~ p109(Y)
                                                                                                                  & p108(Y) ) ) ) )
                                                                                                    | ~ ( ~ p108(X)
                                                                                                        & p107(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p8(Y)
                                                                                                                  & ~ p108(Y)
                                                                                                                  & p107(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p8(Y)
                                                                                                                  & ~ p108(Y)
                                                                                                                  & p107(Y) ) ) ) )
                                                                                                    | ~ ( ~ p107(X)
                                                                                                        & p106(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p7(Y)
                                                                                                                  & ~ p107(Y)
                                                                                                                  & p106(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p7(Y)
                                                                                                                  & ~ p107(Y)
                                                                                                                  & p106(Y) ) ) ) )
                                                                                                    | ~ ( ~ p106(X)
                                                                                                        & p105(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p6(Y)
                                                                                                                  & ~ p106(Y)
                                                                                                                  & p105(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p6(Y)
                                                                                                                  & ~ p106(Y)
                                                                                                                  & p105(Y) ) ) ) )
                                                                                                    | ~ ( ~ p105(X)
                                                                                                        & p104(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p5(Y)
                                                                                                                  & ~ p105(Y)
                                                                                                                  & p104(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p5(Y)
                                                                                                                  & ~ p105(Y)
                                                                                                                  & p104(Y) ) ) ) )
                                                                                                    | ~ ( ~ p104(X)
                                                                                                        & p103(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p4(Y)
                                                                                                                  & ~ p104(Y)
                                                                                                                  & p103(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p4(Y)
                                                                                                                  & ~ p104(Y)
                                                                                                                  & p103(Y) ) ) ) )
                                                                                                    | ~ ( ~ p103(X)
                                                                                                        & p102(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p3(Y)
                                                                                                                  & ~ p103(Y)
                                                                                                                  & p102(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p3(Y)
                                                                                                                  & ~ p103(Y)
                                                                                                                  & p102(Y) ) ) ) )
                                                                                                    | ~ ( ~ p102(X)
                                                                                                        & p101(X) ) )
                                                                                                  & ( ( ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( ~ p2(Y)
                                                                                                                  & ~ p102(Y)
                                                                                                                  & p101(Y) ) ) )
                                                                                                      & ~ ( ! [Y] :
                                                                                                              ( ~ r1(X,Y)
                                                                                                              | ~ ( p2(Y)
                                                                                                                  & ~ p102(Y)
                                                                                                                  & p101(Y) ) ) ) )
                                                                                                    | ~ ( ~ p101(X)
                                                                                                        & p100(X) ) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p21(Y)
                                                                                                            | ~ p120(Y) )
                                                                                                        | p21(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p21(Y)
                                                                                                            | ~ p120(Y) )
                                                                                                        | ~ p21(X) ) )
                                                                                                    | ~ p120(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p20(Y)
                                                                                                            | ~ p119(Y) )
                                                                                                        | p20(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p20(Y)
                                                                                                            | ~ p119(Y) )
                                                                                                        | ~ p20(X) ) )
                                                                                                    | ~ p119(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p19(Y)
                                                                                                            | ~ p118(Y) )
                                                                                                        | p19(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p19(Y)
                                                                                                            | ~ p118(Y) )
                                                                                                        | ~ p19(X) ) )
                                                                                                    | ~ p118(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p18(Y)
                                                                                                            | ~ p117(Y) )
                                                                                                        | p18(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p18(Y)
                                                                                                            | ~ p117(Y) )
                                                                                                        | ~ p18(X) ) )
                                                                                                    | ~ p117(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p17(Y)
                                                                                                            | ~ p116(Y) )
                                                                                                        | p17(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p17(Y)
                                                                                                            | ~ p116(Y) )
                                                                                                        | ~ p17(X) ) )
                                                                                                    | ~ p116(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p16(Y)
                                                                                                            | ~ p115(Y) )
                                                                                                        | p16(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p16(Y)
                                                                                                            | ~ p115(Y) )
                                                                                                        | ~ p16(X) ) )
                                                                                                    | ~ p115(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p15(Y)
                                                                                                            | ~ p114(Y) )
                                                                                                        | p15(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p15(Y)
                                                                                                            | ~ p114(Y) )
                                                                                                        | ~ p15(X) ) )
                                                                                                    | ~ p114(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p14(Y)
                                                                                                            | ~ p113(Y) )
                                                                                                        | p14(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p14(Y)
                                                                                                            | ~ p113(Y) )
                                                                                                        | ~ p14(X) ) )
                                                                                                    | ~ p113(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p13(Y)
                                                                                                            | ~ p112(Y) )
                                                                                                        | p13(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p13(Y)
                                                                                                            | ~ p112(Y) )
                                                                                                        | ~ p13(X) ) )
                                                                                                    | ~ p112(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p12(Y)
                                                                                                            | ~ p111(Y) )
                                                                                                        | p12(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p12(Y)
                                                                                                            | ~ p111(Y) )
                                                                                                        | ~ p12(X) ) )
                                                                                                    | ~ p111(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p11(Y)
                                                                                                            | ~ p110(Y) )
                                                                                                        | p11(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p11(Y)
                                                                                                            | ~ p110(Y) )
                                                                                                        | ~ p11(X) ) )
                                                                                                    | ~ p110(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p10(Y)
                                                                                                            | ~ p109(Y) )
                                                                                                        | p10(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p10(Y)
                                                                                                            | ~ p109(Y) )
                                                                                                        | ~ p10(X) ) )
                                                                                                    | ~ p109(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p9(Y)
                                                                                                            | ~ p108(Y) )
                                                                                                        | p9(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p9(Y)
                                                                                                            | ~ p108(Y) )
                                                                                                        | ~ p9(X) ) )
                                                                                                    | ~ p108(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p8(Y)
                                                                                                            | ~ p107(Y) )
                                                                                                        | p8(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p8(Y)
                                                                                                            | ~ p107(Y) )
                                                                                                        | ~ p8(X) ) )
                                                                                                    | ~ p107(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p7(Y)
                                                                                                            | ~ p106(Y) )
                                                                                                        | p7(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p7(Y)
                                                                                                            | ~ p106(Y) )
                                                                                                        | ~ p7(X) ) )
                                                                                                    | ~ p106(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p6(Y)
                                                                                                            | ~ p105(Y) )
                                                                                                        | p6(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p6(Y)
                                                                                                            | ~ p105(Y) )
                                                                                                        | ~ p6(X) ) )
                                                                                                    | ~ p105(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p5(Y)
                                                                                                            | ~ p104(Y) )
                                                                                                        | p5(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p5(Y)
                                                                                                            | ~ p104(Y) )
                                                                                                        | ~ p5(X) ) )
                                                                                                    | ~ p104(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p4(Y)
                                                                                                            | ~ p103(Y) )
                                                                                                        | p4(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p4(Y)
                                                                                                            | ~ p103(Y) )
                                                                                                        | ~ p4(X) ) )
                                                                                                    | ~ p103(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p3(Y)
                                                                                                            | ~ p102(Y) )
                                                                                                        | p3(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p3(Y)
                                                                                                            | ~ p102(Y) )
                                                                                                        | ~ p3(X) ) )
                                                                                                    | ~ p102(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p2(Y)
                                                                                                            | ~ p101(Y) )
                                                                                                        | p2(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p2(Y)
                                                                                                            | ~ p101(Y) )
                                                                                                        | ~ p2(X) ) )
                                                                                                    | ~ p101(X) )
                                                                                                  & ( ( ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p1(Y)
                                                                                                            | ~ p100(Y) )
                                                                                                        | p1(X) )
                                                                                                      & ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p1(Y)
                                                                                                            | ~ p100(Y) )
                                                                                                        | ~ p1(X) ) )
                                                                                                    | ~ p100(X) )
                                                                                                  & ( p120(X)
                                                                                                    | ~ p121(X) )
                                                                                                  & ( p119(X)
                                                                                                    | ~ p120(X) )
                                                                                                  & ( p118(X)
                                                                                                    | ~ p119(X) )
                                                                                                  & ( p117(X)
                                                                                                    | ~ p118(X) )
                                                                                                  & ( p116(X)
                                                                                                    | ~ p117(X) )
                                                                                                  & ( p115(X)
                                                                                                    | ~ p116(X) )
                                                                                                  & ( p114(X)
                                                                                                    | ~ p115(X) )
                                                                                                  & ( p113(X)
                                                                                                    | ~ p114(X) )
                                                                                                  & ( p112(X)
                                                                                                    | ~ p113(X) )
                                                                                                  & ( p111(X)
                                                                                                    | ~ p112(X) )
                                                                                                  & ( p110(X)
                                                                                                    | ~ p111(X) )
                                                                                                  & ( p109(X)
                                                                                                    | ~ p110(X) )
                                                                                                  & ( p108(X)
                                                                                                    | ~ p109(X) )
                                                                                                  & ( p107(X)
                                                                                                    | ~ p108(X) )
                                                                                                  & ( p106(X)
                                                                                                    | ~ p107(X) )
                                                                                                  & ( p105(X)
                                                                                                    | ~ p106(X) )
                                                                                                  & ( p104(X)
                                                                                                    | ~ p105(X) )
                                                                                                  & ( p103(X)
                                                                                                    | ~ p104(X) )
                                                                                                  & ( p102(X)
                                                                                                    | ~ p103(X) )
                                                                                                  & ( p101(X)
                                                                                                    | ~ p102(X) )
                                                                                                  & ( p100(X)
                                                                                                    | ~ p101(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
                & ~ p101(X)
                & p100(X) ) ) ) )).

%------------------------------------------------------------------------------
