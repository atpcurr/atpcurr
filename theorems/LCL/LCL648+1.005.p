%------------------------------------------------------------------------------
% File     : LCL648+1.005 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In K, pigeonhole formulae, size 5
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : k_ph_p [BHS00]

% Status   : Theorem
% Rating   : 0.12 v7.3.0, 0.14 v7.2.0, 0.17 v7.1.0, 0.25 v7.0.0, 0.14 v6.4.0, 0.07 v6.3.0, 0.15 v6.2.0, 0.18 v6.1.0, 0.40 v6.0.0, 0.25 v5.5.0, 0.54 v5.4.0, 0.52 v5.3.0, 0.57 v5.2.0, 0.36 v5.1.0, 0.43 v5.0.0, 0.65 v4.1.0, 0.78 v4.0.1, 0.79 v4.0.0
% Syntax   : Number of formulae    :    1 (   0 unit)
%            Number of atoms       :  242 (   0 equality)
%            Maximal formula depth :   84 (  84 average)
%            Number of connectives :  308 (  67   ~; 161   |;  80   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :   31 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   63 (   0 sgn;  62   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_NEQ

% Comments : A naive relational encoding of the modal logic problem into
%            first-order logic.
%------------------------------------------------------------------------------
fof(main,conjecture,(
    ~ ( ? [X] :
          ~ ( ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ( p605(Y)
                          & p505(Y) )
                        | ( p605(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p405(X) ) )
                        | ( p505(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p405(X) ) )
                        | ( p605(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p305(X) ) )
                        | ( p505(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p305(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p405(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p305(X) ) )
                        | ( p605(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p205(X) ) )
                        | ( p505(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p205(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p405(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p205(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p305(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p205(X) ) )
                        | ( p605(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p105(X) ) )
                        | ( p505(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p105(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p405(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p105(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p305(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p105(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p205(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p105(X) ) )
                        | ( p604(Y)
                          & p504(Y) )
                        | ( p604(Y)
                          & p404(Y) )
                        | ( p504(Y)
                          & p404(Y) )
                        | ( p604(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p304(X) ) )
                        | ( p504(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p304(X) ) )
                        | ( p404(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p304(X) ) )
                        | ( p604(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p204(X) ) )
                        | ( p504(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p204(X) ) )
                        | ( p404(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p204(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p304(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p204(X) ) )
                        | ( p604(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p104(X) ) )
                        | ( p504(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p104(X) ) )
                        | ( p404(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p104(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p304(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p104(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p204(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p104(X) ) )
                        | ( p603(Y)
                          & p503(Y) )
                        | ( p603(Y)
                          & p403(Y) )
                        | ( p503(Y)
                          & p403(Y) )
                        | ( p603(Y)
                          & p303(Y) )
                        | ( p503(Y)
                          & p303(Y) )
                        | ( p403(Y)
                          & p303(Y) )
                        | ( p603(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p203(X) ) )
                        | ( p503(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p203(X) ) )
                        | ( p403(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p203(X) ) )
                        | ( p303(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p203(X) ) )
                        | ( p603(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p103(X) ) )
                        | ( p503(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p103(X) ) )
                        | ( p403(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p103(X) ) )
                        | ( p303(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p103(X) ) )
                        | ( ! [X] :
                              ( ~ r1(Y,X)
                              | p203(X) )
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p103(X) ) )
                        | ( p602(Y)
                          & p502(Y) )
                        | ( p602(Y)
                          & p402(Y) )
                        | ( p502(Y)
                          & p402(Y) )
                        | ( p602(Y)
                          & p302(Y) )
                        | ( p502(Y)
                          & p302(Y) )
                        | ( p402(Y)
                          & p302(Y) )
                        | ( p602(Y)
                          & p202(Y) )
                        | ( p502(Y)
                          & p202(Y) )
                        | ( p402(Y)
                          & p202(Y) )
                        | ( p302(Y)
                          & p202(Y) )
                        | ( p602(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p102(X) ) )
                        | ( p502(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p102(X) ) )
                        | ( p402(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p102(X) ) )
                        | ( p302(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p102(X) ) )
                        | ( p202(Y)
                          & ! [X] :
                              ( ~ r1(Y,X)
                              | p102(X) ) )
                        | ( p601(Y)
                          & p501(Y) )
                        | ( p601(Y)
                          & p401(Y) )
                        | ( p501(Y)
                          & p401(Y) )
                        | ( p601(Y)
                          & p301(Y) )
                        | ( p501(Y)
                          & p301(Y) )
                        | ( p401(Y)
                          & p301(Y) )
                        | ( p601(Y)
                          & p201(Y) )
                        | ( p501(Y)
                          & p201(Y) )
                        | ( p401(Y)
                          & p201(Y) )
                        | ( p301(Y)
                          & p201(Y) )
                        | ( p601(Y)
                          & p101(Y) )
                        | ( p501(Y)
                          & p101(Y) )
                        | ( p401(Y)
                          & p101(Y) )
                        | ( p301(Y)
                          & p101(Y) )
                        | ( p201(Y)
                          & p101(Y) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ~ ( ( p605(Y)
                      | p604(Y)
                      | p603(Y)
                      | p602(Y)
                      | p601(Y) )
                    & ( p505(Y)
                      | p504(Y)
                      | p503(Y)
                      | p502(Y)
                      | p501(Y) )
                    & ( ! [X] :
                          ( ~ r1(Y,X)
                          | p405(X) )
                      | p404(Y)
                      | p403(Y)
                      | p402(Y)
                      | p401(Y) )
                    & ( ! [X] :
                          ( ~ r1(Y,X)
                          | p305(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p304(X) )
                      | p303(Y)
                      | p302(Y)
                      | p301(Y) )
                    & ( ! [X] :
                          ( ~ r1(Y,X)
                          | p205(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p204(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p203(X) )
                      | p202(Y)
                      | p201(Y) )
                    & ( ! [X] :
                          ( ~ r1(Y,X)
                          | p105(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p104(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p103(X) )
                      | ! [X] :
                          ( ~ r1(Y,X)
                          | p102(X) )
                      | p101(Y) ) ) ) ) ) )).

%------------------------------------------------------------------------------
