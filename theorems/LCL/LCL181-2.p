%--------------------------------------------------------------------------
% File     : LCL181-2 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Principia Mathematica 2.15
% Version  : [Pel86] axioms.
% English  : Judged by [SRM73] to be the 'hardest' of the first 52 theorems
%            of [WR27].

% Refs     : [WR27]  Whitehead & Russell (1927), Principia Mathematica
%          : [SRM73] Siklossy et al. (1973), Breadth First Search: Some Sur
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
% Source   : [Pel86]
% Names    : Pelletier 4 [Pel86]

% Status   : Unsatisfiable
% Rating   : 0.00 v4.1.0, 0.20 v3.7.0, 0.25 v3.5.0, 0.00 v3.3.0, 0.33 v3.2.0, 0.00 v2.0.0
% Syntax   : Number of clauses     :    4 (   1 non-Horn;   2 unit;   4 RR)
%            Number of atoms       :    6 (   0 equality)
%            Maximal clause size   :    2 (   2 average)
%            Number of predicates  :    2 (   2 propositional; 0-0 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :    0 (   0 singleton)
%            Maximal term depth    :    0 (   0 average)
% SPC      : CNF_UNS_PRP

% Comments :
% Bugfixes : v1.1.1 - Renamed from SYN042-1.
%--------------------------------------------------------------------------
cnf(clause_1,negated_conjecture,
    ( p
    | q )).

cnf(clause_2,negated_conjecture,
    ( ~ q
    | ~ p )).

cnf(clause_3,negated_conjecture,
    ( ~ q )).

cnf(clause_4,negated_conjecture,
    ( ~ p )).

%--------------------------------------------------------------------------
