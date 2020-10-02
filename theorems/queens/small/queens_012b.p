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
    ( ~ queens(s(s(s(s(s(s(s(s(s(s(s(s(n0)))))))))))),Placement) )).

%------------------------------------------------------------------------------
