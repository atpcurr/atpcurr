%------------------------------------------------------------------------------
% File     : PUZ034-1.003 : TPTP v7.3.0. Released v1.0.0.
% Domain   : Puzzles
% Problem  : N queens problem
% Version  : [SETHEO] axioms : Biased.
% English  : The problem is to place 3 queens on an 3x3 chess board, so that no
%            queen can attack another.

% Refs     :
% Source   : [SETHEO]
% Names    : q1-2.lop (Size 8) [SETHEO]
%          : q1-9.lop (Size 9) [SETHEO]
%          : q1-10.lop (Size 10) [SETHEO]

% Status   : Satisfiable
% Rating   : 1.00 v5.4.0, 0.89 v5.3.0, 1.00 v3.3.0, 0.67 v3.2.0, 1.00 v3.1.0, 0.86 v2.7.0, 0.80 v2.6.0, 1.00 v2.5.0, 0.83 v2.4.0, 0.67 v2.2.1, 1.00 v2.1.0
% Syntax   : Number of clauses     :   18 (   2 non-Horn;   9 unit;  12 RR)
%            Number of atoms       :   39 (   0 equality)
%            Maximal clause size   :    7 (   2 average)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :    4 (   2 constant; 0-2 arity)
%            Number of variables   :   45 (   6 singleton)
%            Maximal term depth    :    4 (   1 average)
% SPC      : CNF_SAT_RFO_NEQ

% Comments : Biased towards SETHEO.
%          : tptp2X: -f tptp -s3 PUZ034-1.g
%------------------------------------------------------------------------------
cnf(make_list_of_numbers1,axiom,
    ( range(Low,High,cons(Low,RestOfNumbers))    
    | ~ range(NewLow,High,RestOfNumbers)
    | ~ sum(Low,s(n0),NewLow)
    | ~ less(Low,High) )).

cnf(make_list_of_numbers2,axiom,
    ( range(Same,Same,cons(Same,empty_list)) )).

cnf(less1,axiom,
    ( less(n0,s(X)) )).

cnf(less2,axiom,
    ( less(s(X),s(Y))
    | ~ less(X,Y) )).

cnf(add_0,axiom,
    ( sum(X,n0,X) )).

cnf(add,axiom,
    ( ~ sum(X,Y,Z)
    | sum(X,s(Y),s(Z)) )).

cnf(select1,axiom,
    ( select(Head,cons(Head,Tail),Tail) )).

cnf(select2,axiom,
    ( select(Element,cons(Head,Tail),cons(Head,NewTail))
    | ~ select(Element,Tail,NewTail) )).

cnf(same_definition1,axiom,
    ( ~ same(s(X),n0) )).

cnf(same_definition2,axiom,
    ( ~ same(n0,s(X)) )).

cnf(same_definition3,axiom,
    ( ~ same(s(X),s(Y))
    | same(X,Y) )).

cnf(attack,axiom,
    ( diagonal_attack(Queen,s(n0),PlacedQueens)
    | ~ attack(Queen,PlacedQueens) )).

cnf(check_diagonals1,axiom,
    ( ~ diagonal_attack(Queen,QueenNumber,cons(PlacedQueen,OtherPlacedQueens))    
    | diagonal_attack(Queen,NextQueenNumber,OtherPlacedQueens)
    | ~ sum(QueenNumber,s(n0),NextQueenNumber)
    | same(Diagonal2,Queen)
    | ~ sum(PlacedQueen,QueenNumber,Diagonal2)
    | same(Diagonal1,Queen)
    | ~ sum(Diagonal1,QueenNumber,PlacedQueen) )).

cnf(check_diagonals2,axiom,
    ( ~ diagonal_attack(Queen,LastQueen,empty_list) )).

cnf(place_a_queen1,axiom,
    ( do_queens(UnplacedQueens,SafeQueens,Placement)
    | ~ do_queens(RestOfUnplacedQueens,cons(AQueen,SafeQueens),Placement)
    | attack(AQueen,SafeQueens)
    | ~ select(AQueen,UnplacedQueens,RestOfUnplacedQueens) )).

cnf(place_a_queen2,axiom,
    ( do_queens(empty_list,Placement,Placement) )).

cnf(set_up_queens,axiom,
    ( queens(NumberOfQueens,Placement)
    | ~ do_queens(Positions,empty_list,Placement)
    | ~ range(Low,High,Positions)
    | ~ sum(NumberOfQueens,NumberOfQueens,High)
    | ~ sum(NumberOfQueens,s(n0),Low) )).

cnf(place_queens,negated_conjecture,
    ( ~ queens(s(s(s(n0))),Placement) )).

%------------------------------------------------------------------------------
