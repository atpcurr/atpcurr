%------------------------------------------------------------------------------
% File     : LCL655+1.020 : TPTP v7.3.0. Released v4.0.0.
% Domain   : Logic Calculi (Modal Logic)
% Problem  : In KT, A5 not provable with instances of A4, size 20
% Version  : Especial.
% English  :

% Refs     : [BHS00] Balsiger et al. (2000), A Benchmark Method for the Pro
%          : [Kam08] Kaminski (2008), Email to G. Sutcliffe
% Source   : [Kam08]
% Names    : kt_45_n [BHS00]

% Status   : CounterSatisfiable
% Rating   : 0.33 v7.3.0, 0.00 v7.0.0, 0.33 v6.4.0, 0.50 v6.2.0, 0.67 v6.1.0, 0.50 v6.0.0, 0.29 v5.5.0, 0.43 v5.4.0, 0.80 v5.3.0, 0.77 v5.2.0, 0.62 v5.0.0, 0.78 v4.1.0, 0.67 v4.0.1, 1.00 v4.0.0
% Syntax   : Number of formulae    :    2 (   1 unit)
%            Number of atoms       : 2211 (   0 equality)
%            Maximal formula depth :  170 (  86 average)
%            Number of connectives : 4661 (2452   ~;2069   |; 140   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of predicates  :    2 (   0 propositional; 1-2 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   : 1892 (   0 sgn;1891   !;   1   ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_CSA_RFO_NEQ

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
                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ~ ( ~ p1(X)
                                                                                                                    & ! [Y] :
                                                                                                                        ( ~ r1(X,Y)
                                                                                                                        | p1(Y) ) ) ) ) )
                                                                                                    & ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | p1(Y)
                                                                                                        | ~ ( ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ~ ( ~ p1(X)
                                                                                                                    & ~ ( ! [Y] :
                                                                                                                            ( ~ r1(X,Y)
                                                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                                                    & ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | p1(Y)
                                                                                                        | ! [X] :
                                                                                                            ( ~ r1(Y,X)
                                                                                                            | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                | ~ ( ~ p1(X)
                                                                                                    & ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                                | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                | ~ ( ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | p1(X) ) ) )
                                                                                                    & ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ ( ~ p1(Y)
                                                                                                                & ! [X] :
                                                                                                                    ( ~ r1(Y,X)
                                                                                                                    | p1(X) ) ) ) ) )
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X)
                                                                                                    | ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ ( ~ p1(Y)
                                                                                                                & ~ ( ! [X] :
                                                                                                                        ( ~ r1(Y,X)
                                                                                                                        | ~ p1(X) ) ) ) ) ) )
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X)
                                                                                                    | ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                            | ~ ( ~ p1(Y)
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                            | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                            | ~ ( ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | p1(Y) ) ) )
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ p1(X)
                                                                                                            & ! [Y] :
                                                                                                                ( ~ r1(X,Y)
                                                                                                                | p1(Y) ) ) ) ) )
                                                                                            & ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | p1(Y)
                                                                                                | ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ ( ~ p1(X)
                                                                                                            & ~ ( ! [Y] :
                                                                                                                    ( ~ r1(X,Y)
                                                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                                                            & ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | p1(Y)
                                                                                                | ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                        | ~ ( ~ p1(X)
                                                                                            & ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                        | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                        | ~ ( ~ ( ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | p1(X) ) ) )
                                                                                            & ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ ( ~ p1(Y)
                                                                                                        & ! [X] :
                                                                                                            ( ~ r1(Y,X)
                                                                                                            | p1(X) ) ) ) ) )
                                                                                        & ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | p1(X)
                                                                                            | ~ ( ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ ( ~ p1(Y)
                                                                                                        & ~ ( ! [X] :
                                                                                                                ( ~ r1(Y,X)
                                                                                                                | ~ p1(X) ) ) ) ) ) )
                                                                                        & ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | p1(X)
                                                                                            | ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                    | ~ ( ~ p1(Y)
                                                                                        & ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                    | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                    | ~ ( ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | p1(Y) ) ) )
                                                                                        & ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ~ ( ~ p1(X)
                                                                                                    & ! [Y] :
                                                                                                        ( ~ r1(X,Y)
                                                                                                        | p1(Y) ) ) ) ) )
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y)
                                                                                        | ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ~ ( ~ p1(X)
                                                                                                    & ~ ( ! [Y] :
                                                                                                            ( ~ r1(X,Y)
                                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y)
                                                                                        | ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                | ~ ( ~ p1(X)
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                                | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                | ~ ( ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | p1(X) ) ) )
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ~ ( ~ ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ p1(Y)
                                                                                                & ! [X] :
                                                                                                    ( ~ r1(Y,X)
                                                                                                    | p1(X) ) ) ) ) )
                                                                                & ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p1(X)
                                                                                    | ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ~ ( ~ ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ ( ~ p1(Y)
                                                                                                & ~ ( ! [X] :
                                                                                                        ( ~ r1(Y,X)
                                                                                                        | ~ p1(X) ) ) ) ) ) )
                                                                                & ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p1(X)
                                                                                    | ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ~ ( ~ p1(Y)
                                                                                & ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                            | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ~ ( ~ ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | p1(Y) ) ) )
                                                                                & ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                        | ~ ( ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ ( ~ p1(X)
                                                                                            & ! [Y] :
                                                                                                ( ~ r1(X,Y)
                                                                                                | p1(Y) ) ) ) ) )
                                                                            & ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | p1(Y)
                                                                                | ~ ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                        | ~ ( ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ ( ~ p1(X)
                                                                                            & ~ ( ! [Y] :
                                                                                                    ( ~ r1(X,Y)
                                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                                            & ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | p1(Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                        | ~ ( ~ p1(X)
                                                                            & ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                        | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                        | ~ ( ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | p1(X) ) ) )
                                                                            & ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ~ p1(Y)
                                                                                        & ! [X] :
                                                                                            ( ~ r1(Y,X)
                                                                                            | p1(X) ) ) ) ) )
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X)
                                                                            | ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ ( ~ p1(Y)
                                                                                        & ~ ( ! [X] :
                                                                                                ( ~ r1(Y,X)
                                                                                                | ~ p1(X) ) ) ) ) ) )
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                    | ~ ( ~ p1(Y)
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                    | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                    | ~ ( ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | p1(Y) ) ) )
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                | ~ ( ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ p1(X)
                                                                                    & ! [Y] :
                                                                                        ( ~ r1(X,Y)
                                                                                        | p1(Y) ) ) ) ) )
                                                                    & ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y)
                                                                        | ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                | ~ ( ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ ( ~ p1(X)
                                                                                    & ~ ( ! [Y] :
                                                                                            ( ~ r1(X,Y)
                                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                                    & ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                | ~ ( ~ p1(X)
                                                                    & ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                                | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                | ~ ( ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | p1(X) ) ) )
                                                                    & ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                            | ~ ( ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ ( ~ p1(Y)
                                                                                & ! [X] :
                                                                                    ( ~ r1(Y,X)
                                                                                    | p1(X) ) ) ) ) )
                                                                & ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X)
                                                                    | ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                            | ~ ( ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ ( ~ p1(Y)
                                                                                & ~ ( ! [X] :
                                                                                        ( ~ r1(Y,X)
                                                                                        | ~ p1(X) ) ) ) ) ) )
                                                                & ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                            | ~ ( ~ p1(Y)
                                                                & ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                            | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                            | ~ ( ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | p1(Y) ) ) )
                                                                & ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ ( ~ p1(X)
                                                                            & ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | p1(Y) ) ) ) ) )
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y)
                                                                | ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ ( ~ p1(X)
                                                                            & ~ ( ! [Y] :
                                                                                    ( ~ r1(X,Y)
                                                                                    | ~ p1(Y) ) ) ) ) ) )
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                        | ~ ( ~ p1(X)
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                        | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                        | ~ ( ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | p1(X) ) ) )
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                    | ~ ( ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ p1(Y)
                                                                        & ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | p1(X) ) ) ) ) )
                                                        & ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X)
                                                            | ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                    | ~ ( ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ ( ~ p1(Y)
                                                                        & ~ ( ! [X] :
                                                                                ( ~ r1(Y,X)
                                                                                | ~ p1(X) ) ) ) ) ) )
                                                        & ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                    | ~ ( ~ p1(Y)
                                                        & ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                                    | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                    | ~ ( ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | p1(Y) ) ) )
                                                        & ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X) ) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                | ~ ( ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ~ ( ~ p1(X)
                                                                    & ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | p1(Y) ) ) ) ) )
                                                    & ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y)
                                                        | ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | p1(X) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                | ~ ( ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ~ ( ~ p1(X)
                                                                    & ~ ( ! [Y] :
                                                                            ( ~ r1(X,Y)
                                                                            | ~ p1(Y) ) ) ) ) ) )
                                                    & ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                | ~ ( ~ p1(X)
                                                    & ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) )
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
                                                                | ~ p1(X) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                                | ~ ( ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | p1(X) ) ) )
                                                    & ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y) ) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ ( ~ p1(Y)
                                                                & ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | p1(X) ) ) ) ) )
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X)
                                                    | ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | p1(Y) ) ) ) ) ) ) ) ) ) ) ) )
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
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ ( ~ p1(Y)
                                                                & ~ ( ! [X] :
                                                                        ( ~ r1(Y,X)
                                                                        | ~ p1(X) ) ) ) ) ) )
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) )
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
                                            | ~ ( ~ p1(Y)
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X) ) ) ) ) ) ) ) ) ) )
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
                                                            | ~ p1(Y) ) ) ) ) ) ) ) ) ) ) ) )
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
                                            | ~ ( ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | p1(Y) ) ) )
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X) ) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                        | ~ ( ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ p1(X)
                                                            & ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | p1(Y) ) ) ) ) )
                                            & ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y)
                                                | ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | p1(X) ) ) ) ) ) ) ) ) ) ) )
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
                                        | ~ ( ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ ( ~ p1(X)
                                                            & ~ ( ! [Y] :
                                                                    ( ~ r1(X,Y)
                                                                    | ~ p1(Y) ) ) ) ) ) )
                                            & ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ~ p1(X) ) ) ) ) ) ) ) ) ) )
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
                                        | ~ ( ~ p1(X)
                                            & ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y) ) ) ) ) ) ) ) ) )
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
                                                        | ~ p1(X) ) ) ) ) ) ) ) ) ) ) )
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
                                        | ~ ( ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | p1(X) ) ) )
                                            & ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y) ) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
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
                                    | ~ ( ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ ( ~ p1(Y)
                                                        & ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | p1(X) ) ) ) ) )
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X)
                                            | ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | p1(Y) ) ) ) ) ) ) ) ) ) )
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
                                    | ~ ( ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ ( ~ p1(Y)
                                                        & ~ ( ! [X] :
                                                                ( ~ r1(Y,X)
                                                                | ~ p1(X) ) ) ) ) ) )
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ~ p1(Y) ) ) ) ) ) ) ) ) )
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
                                    | ~ ( ~ p1(Y)
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) ) ) ) ) ) ) ) )
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
                                                    | ~ p1(Y) ) ) ) ) ) ) ) ) ) )
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
                                    | ~ ( ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | p1(Y) ) ) )
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) ) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ ( ~ p1(X)
                                                    & ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | p1(Y) ) ) ) ) )
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y)
                                        | ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | p1(X) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ ( ~ p1(X)
                                                    & ~ ( ! [Y] :
                                                            ( ~ r1(X,Y)
                                                            | ~ p1(Y) ) ) ) ) ) )
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ~ p1(X) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ p1(X)
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
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
                                                | ~ p1(X) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ! [X] :
                                ( ~ r1(Y,X)
                                | ~ ( ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ! [X] :
                                                ( ~ r1(Y,X)
                                                | p1(X) ) ) )
                                    & ! [Y] :
                                        ( ~ r1(X,Y)
                                        | p1(Y) ) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ( ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ p1(Y)
                                                & ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | p1(X) ) ) ) ) )
                                & ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X)
                                    | ~ ( ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p1(Y) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ( ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | ~ ( ~ p1(Y)
                                                & ~ ( ! [X] :
                                                        ( ~ r1(Y,X)
                                                        | ~ p1(X) ) ) ) ) ) )
                                & ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ~ p1(Y) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ( ~ p1(Y)
                                & ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
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
                                            | ~ p1(Y) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ! [Y] :
                            ( ~ r1(X,Y)
                            | ~ ( ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | ! [Y] :
                                            ( ~ r1(X,Y)
                                            | p1(Y) ) ) )
                                & ! [X] :
                                    ( ~ r1(Y,X)
                                    | p1(X) ) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p1(X)
                                            & ! [Y] :
                                                ( ~ r1(X,Y)
                                                | p1(Y) ) ) ) ) )
                            & ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y)
                                | ~ ( ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | ~ ( ~ p1(X)
                                            & ~ ( ! [Y] :
                                                    ( ~ r1(X,Y)
                                                    | ~ p1(Y) ) ) ) ) ) )
                            & ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ~ p1(X) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ p1(X)
                            & ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
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
                                        | ~ p1(X) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ! [X] :
                        ( ~ r1(Y,X)
                        | ~ ( ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ! [X] :
                                        ( ~ r1(Y,X)
                                        | p1(X) ) ) )
                            & ! [Y] :
                                ( ~ r1(X,Y)
                                | p1(Y) ) ) ) ) )
            | ! [Y] :
                ( ~ r1(X,Y)
                | ! [X] :
                    ( ~ r1(Y,X)
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ p1(Y)
                                        & ! [X] :
                                            ( ~ r1(Y,X)
                                            | p1(X) ) ) ) ) )
                        & ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X)
                            | ~ ( ! [Y] :
                                    ( ~ r1(X,Y)
                                    | p1(Y) ) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ ( ! [X] :
                                ( ~ r1(Y,X)
                                | ! [Y] :
                                    ( ~ r1(X,Y)
                                    | ~ ( ~ p1(Y)
                                        & ~ ( ! [X] :
                                                ( ~ r1(Y,X)
                                                | ~ p1(X) ) ) ) ) ) )
                        & ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ~ p1(Y) ) ) ) ) )
            | ~ ( ! [Y] :
                    ( ~ r1(X,Y)
                    | ~ ( ~ p1(Y)
                        & ! [X] :
                            ( ~ r1(Y,X)
                            | p1(X) ) ) ) )
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
                    | ! [Y] :
                        ( ~ r1(X,Y)
                        | ! [X] :
                            ( ~ r1(Y,X)
                            | ! [Y] :
                                ( ~ r1(X,Y)
                                | ! [X] :
                                    ( ~ r1(Y,X)
                                    | ! [Y] :
                                        ( ~ r1(X,Y)
                                        | ! [X] :
                                            ( ~ r1(Y,X)
                                            | ! [Y] :
                                                ( ~ r1(X,Y)
                                                | ! [X] :
                                                    ( ~ r1(Y,X)
                                                    | ! [Y] :
                                                        ( ~ r1(X,Y)
                                                        | ! [X] :
                                                            ( ~ r1(Y,X)
                                                            | ! [Y] :
                                                                ( ~ r1(X,Y)
                                                                | ! [X] :
                                                                    ( ~ r1(Y,X)
                                                                    | ! [Y] :
                                                                        ( ~ r1(X,Y)
                                                                        | ! [X] :
                                                                            ( ~ r1(Y,X)
                                                                            | ! [Y] :
                                                                                ( ~ r1(X,Y)
                                                                                | ! [X] :
                                                                                    ( ~ r1(Y,X)
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
                                                                                                | p1(Y) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

%------------------------------------------------------------------------------
