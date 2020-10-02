%% Simple interactive environment to explore leanCoP
%% Given a problem in tptp format in File, simple call
%%
%% init(File).
%%
%% You can observe the current state as well as the list of valid actions
%% Select the index (starting from 0) I of the action you want to make
%%
%% step(I).
%%
%% You can now observe the resulting state and repeatedly perform more steps.
%%
%% Goal: current goal to prove
%% Path: list of open goals (anestors of the current goal)
%% Lem: list of lemmas (literals that we have already proven with a prefix of the current path)
%% Result: 0 (there are valid moves), 1 (success), 2 (failure)
%% Todos: list of triples of Goal, Path, Lem on the stack

:- use_module(library(assoc)).
:- use_module(hashtbl/prolog/p_hashtbl, [empty_p_hashtbl/1,
                                         p_hashtbl_put/4,
                                         p_hashtbl_enumerate/3]).
                                         

:- dynamic(lit/6).
:- dynamic(option/1).
:- dynamic(state/3).
:- dynamic(alternative/1).
%% :- dynamic(lemma/2).

:- [leancop_tptp2].  % load program for TPTP input syntax
:- [def_mm].  % load program for clausal form translation
:- [leancop21_swi]. % load program for asserting clauses

search(File):-
    Settings = [conj, nodef, comp(4), print_proof],
%%    retractall(lemma(_,_)),
    init_pure(File, Settings, State),
    search2(State, 1).
search2(State, Success):-
    State = state(_Tableau, Actions, _Result),
    nth0(ActionIndex, Actions, _),
    step_pure(ActionIndex, State, NewState, _Step),
    NewState = state(_, _, Result),
    ( Result = 1 -> !, Success = 1
    ; Result = -1 -> fail
    ; search2(NewState, Success)
    ),
    ( Success == 1 -> ! ; true ) .

    

    


init:-
    %% init('theorems/robinson/robinson_1m1__1/robinson_1m1__1.p', Settings).
    init('theorems/m2np/t108_zfmisc_1.p').
init(File):-
    Settings = [conj,nodef,
		        % comp(10),
                verbose,print_proof
               ],
    init(File, Settings).
init(File,Settings):-
    init(File,Settings,_).
init(File,Settings,NewState):-
    retractall(state(_,_,_)),
    init_pure(File,Settings,NewState),
    asserta(NewState),
    log(NewState, start).

% init_pure(+File,+Settings,-NewState)
init_pure(File,Settings,NewState):-
    retractall(option(_)),
    findall(_, ( member(S,Settings), assert(option(S)) ), _ ),

    AxNames=[_],
    %% AxPath='',
    file_directory_name(File, AxPath0),
    name(AxPath0, N0), name("/", N1), append(N0, N1, N), name(AxPath, N),
    % format("Trying to open file ~w...\n", [File]),
    leancop_tptp2(File,AxPath,AxNames,Problem,Conj), !,
    % format("Successfully opened file ~w\n", [File]),
    ( Conj\=[] -> Problem1=Problem ; Problem1=(~Problem) ),
    ( option(extra_axioms(ExtraAxioms)), atom_string(ExtraAxioms, AxiomFile), exists_file(AxiomFile) ->
      leancop_tptp2(AxiomFile,AxPath,AxNames,ProblemExtra,_), !,
      format("Successfully opened extra file ~w\n", [AxiomFile]),
      ( Problem1=(A=>C) -> Problem2=((ProblemExtra,A)=>C) ; Problem2=(ProblemExtra=>Problem1) )
    ; Problem2 = Problem1
    ),
    
    leancop_equal(Problem2,Problem3),
    %% leancop_equal_reflexivity(Problem2,Problem3), % TODO
    make_matrix(Problem3,Matrix,Settings),

    ( option(verbose) ->
	  writeln(["Problem ", Problem2]),
	  writeln(["Matrix ", Matrix])
     ; true
    ),
    b_setval(matrix, Matrix), %TODO super ugly
    retractall(lit(_,_,_,_,_,_)),
    (member([-(#)],Matrix) -> S=conj ; S=pos),
    assert_clauses(Matrix,S),
    % empty_p_hashtbl(Subst0),
    Subst0 = none,
    Tableau0 = tableau([-(#)],[],[],[],[],Subst0,[init((-#)-(-#))]),

    det_steps(Tableau0, Tableau, Result0),
    tab_comp(goal, Tableau, Goal),
    tab_comp(path, Tableau, Path),
    valid_actions_filter(Goal, Path, Actions),
    (  length(Actions,0), Result0 < 1 -> Result = -1
     ; Result = Result0
    ),
    NewState = state(Tableau, Actions, Result).
    

    
step(ActionIndex):-
    step(ActionIndex,_State).
step(ActionIndex,NewState):-
    state(Tableau, Actions, Result), !,
    State = state(Tableau, Actions, Result),
    step_pure(ActionIndex,State,NewState,_Action0),
    asserta(NewState).


% step_pure(+ActionIndex,+State,-NewState,-SelectedAction))
step_pure(ActionIndex,State,NewState,Action0):-
    State = state(Tableau0, Actions0, Result0),
    nth0(ActionIndex,Actions0,Action0),

    % if there were other alternative actions, store them as alternatives
    ( option(backtrack), Actions0=[_,_|_] ->
	  select_nounif(Action0, Actions0, RemActions0), !,
      AltState = state(Tableau0, RemActions0, Result0),
	  asserta(alternative(AltState))
    ; true
    ),
  
    nondet_step(Action0, Tableau0, Tableau1, Result1),
    
    ( Result1 == -1, option(backtrack),
      alternative(NewState), retract(alternative(NewState)) -> true
	; tab_comp(goal, Tableau1, Goal1),
      tab_comp(path, Tableau1, Path1),
      valid_actions_filter(Goal1, Path1, Actions1),
      NewState = state(Tableau1, Actions1, Result1)
    ),
	log(NewState, Action0).

% log exploration
log(state(Tableau, Actions, Result), Selected):-
    Tableau = tableau(Goal,Path,Lem,LemReq,Todos,Subst,Proof),
    ( option(verbose) ->
	  write("Selected "), print_term(Selected, [indent_arguments(false)]), nl,
	  write("Goal     "), print_term(Goal, [indent_arguments(false)]), nl,
	  write("Path     "), print_term(Path, [indent_arguments(false)]), nl,
	  write("Lem      "), print_term(Lem, [indent_arguments(false)]), nl,
	  write("LemReq   "), print_term(LemReq, [indent_arguments(false)]), nl,
      nl,
      writeln("Actions:"),
      findall(_, (
                 nth0(N, Actions, A),
                 write(N), write(" "),
                 %% print_term(A,[indent_arguments(false)]),
                 ( A = ext(NegLit, Cla, _, _, _) ->  print_term([NegLit|Cla],[indent_arguments(false)])
                 ; A = red(NegLit) -> print_term(red(NegLit), [indent_arguments(false)])
                 ; A = para(Pos, LHS, RHS, Cla1, Dir, _, _) -> print_term(para(Pos, LHS, RHS, Cla1, Dir),[indent_arguments(false)])
                 ),
                 nl
              ), _
             ), 
      nl,
	  write("Result   "), print_term(Result, [indent_arguments(false)]), nl,
	  write("Todos    "), print_term(Todos, [indent_arguments(false)]), nl,
      % subst2preds(Subst, SubstPreds), nl, print_term(SubstPreds, [indent_arguments(false)]), nl,
      display_subst(Subst)
     ; true
    ),

    ( option(print_proof), Result == 1 ->
	  writeln("Proof found:"),
	  reverse(Proof,ProofRev),
	  print_my_proof(ProofRev, orig)
     ; true
    ).


% goal and path share an identical literal
has_loop(Goal,Path):-
    (member(LitC,Goal), member(LitP,Path), LitC==LitP), !.
% Lit is the negation of NegLit
neg_lit(Lit, NegLit):-
    (-NegLit=Lit;-Lit=NegLit), !.
select_nounif(E,Xs,Rem):-
    select_nounif(Xs,E,[],Rem).
select_nounif([X|Xs],E,Acc,Rem):-
    ( X == E -> reverse(Acc,RevAcc), append(RevAcc,Xs,Rem)
     ;select_nounif(Xs,E,[X|Acc],Rem)
    ).


%%% make a single proof step from a choice point
nondet_step(red(NegL), Tableau, NewTableau, Result):- % reduction step
    Tableau = tableau([Lit|Cla], Path, Lem, LemReq, Todos, Subst, Proof),
    append(PathSuffix,[NegL2|PathPrefix], Path), NegL2 == NegL, !,
    length([NegL2|PathPrefix], PLen),
    update_lem_req(PathSuffix, PLen, LemReq, LemReq2),
    Ext = [Lit, NegL],
    copy_term(Ext,Ext_orig),
    neg_lit(Lit,NegL),
    Proof1 = [red(Ext_orig-Ext)|Proof],
    Tableau1 = tableau(Cla, Path, Lem, LemReq2, Todos, Subst, Proof1),
    det_steps(Tableau1, NewTableau, Result).
nondet_step(ext(NegLit,Cla1,_Grnd1, Key,Vars), Tableau, NewTableau, Result):- % extension step
    Tableau = tableau([Lit|Cla], Path, Lem, LemReq, Todos, Subst, Proof),
    Ext = [Lit, [NegLit|Cla1]],
    copy_term(Ext, Ext_orig),
    neg_lit(Lit, NegLit),
    ( Cla=[_|_] ->
	  Todos1 = [[Cla,Path,Lem]|Todos]
     ; Todos1 = Todos
    ),
    Proof1=[ext(Ext_orig-Ext)|Proof],
    ( length(Vars,0) -> Subst1 = Subst ; update_subst(Subst, Key, Vars, Subst1) ),
    Tableau1 = tableau(Cla1, [Lit|Path], Lem, LemReq, Todos1, Subst1, Proof1),
    det_steps(Tableau1, NewTableau, Result).
nondet_step(para(Pos, LHS, RHS, Cla1, Dir, Key, Vars), Tableau, NewTableau, Result):- % paramodulation
    Tableau = tableau([Lit|Cla], Path, Lem, LemReq, Todos, Subst, Proof),
    position(Lit, Pos, Term), !,
    Para = [Lit, Pos, LHS, RHS, Cla1, Dir],
    copy_term(Para, Para_orig),
    ( Dir = l2r -> LHS = Term, RHS = To
    ; LHS = To, RHS = Term
    ),
    replace_term_in_pos(Lit, Pos,To,Lit1),
    ( Cla=[_|_] ->
	  Todos1 = [[Cla,Path,Lem]|Todos]
     ; Todos1 = Todos
    ),
    Proof1=[para(Para_orig-Para)|Proof],
    ( length(Vars,0) -> Subst1 = Subst ; update_subst(Subst, Key, Vars, Subst1) ),
    Tableau1 = tableau([Lit1|Cla1], [Lit|Path], Lem, LemReq, Todos1, Subst1, Proof1),
    det_steps(Tableau1, NewTableau, Result).

det_steps(Tableau, NewTableau, Result):-
    Tableau = tableau(Goal, Path, Lem, LemReq, Todos, Subst, Proof),

    ( Goal = [] -> % nothing to prove
      ( Todos = [] -> % nothing todo on the stack
        NewTableau = tableau([success],[],[],[],[],Subst,Proof), Result = 1
      ; Todos = [[Goal1,Path1,_Lem1]|Todos1] -> % nothing to prove, something on the stack

        
        % Path1 is a prefix of Path. The difference contains potential lemmas (provided they satisfy LemReq)
        length(Path1, PLen),
        append(PotLem, Path1, Path), !,
        extract_lemmas(PotLem, LemReq, LemReq2, NewLem),
        append(Lem, NewLem, Lem1),

        % Get rid of obsolete lemmas
        filter_lemmas(Lem1, PLen, Lem2),

        
        Tableau1 = tableau(Goal1, Path1, Lem2, LemReq2, Todos1, Subst, Proof),
        det_steps(Tableau1, NewTableau, Result)
      )
    ; member(Lit,Goal), member(P,Path), Lit == P -> % loop elimination
      NewTableau = tableau([failure],[],[],[],[],Subst,Proof), Result = -1
    ; Goal = [Lit|Cla], member(LitL-_,Lem), Lit==LitL -> % perform lemma step
      Proof1 = [lem(Lit)|Proof],
      Tableau1 = tableau(Cla, Path, Lem, LemReq, Todos, Subst, Proof1),
      det_steps(Tableau1, NewTableau, Result)
    %% ; Goal = [Lit|Cla], lemma(_,LitL), unify_with_occurs_check(Lit,LitL), % perform global lemma step
    %%   Proof1 = [lem(Lit)|Proof],
    %%   Tableau1 = tableau(Cla, Path, Lem, LemReq, Todos, Subst, Proof1),
    %%   det_steps(Tableau1, NewTableau, Result)
    ; Goal = [Lit|Cla], neg_lit(Lit,NegLit),
      ( option(eager_reduction(1)) ->
        append(PathSuffix,[NegL|PathPrefix], Path), unify_with_occurs_check(NegL, NegLit), ! % eager reduction
      ; append(PathSuffix,[NegL|PathPrefix], Path), NegL == NegLit, ! % reduction step without unification can be performed eagerly
      ),
      length([NegL|PathPrefix], PLen),
      update_lem_req(PathSuffix, PLen, LemReq, LemReq2),
      
      Ext = [Lit, NegLit],
      Proof1 = [red(Ext-Ext)|Proof],
      Tableau1 = tableau(Cla, Path, Lem, LemReq2, Todos, Subst, Proof1),
      det_steps(Tableau1, NewTableau, Result)
    ; valid_actions_filter(Goal,Path,Actions),
      ( option(single_action_optim),  Actions==[A] -> % only a single action is available, so perform it
	    nondet_step(A,Tableau, NewTableau, Result)
      ; Actions==[] ->             % proof failed
        NewTableau = tableau([failure],[],[],[],Subst,Proof), Result = -1
      ; option(comp(PathLim)), \+ ground(Goal), length(Path,PLen), PLen > PathLim -> % reached path limit
        NewTableau = tableau([failure],[],[],[],Subst,Proof), Result = -1
      ; NewTableau = Tableau, Result = 0
      )
    ).
    

valid_actions_filter(Goal,Path,Actions):-
    ( option(eager_reduction(0)) -> Set1 = [ext, red] ; Set1 = [ext] ),
    ( option(paramodulation(1)) -> Set = [para| Set1] ; Set = Set1 ),
    valid_actions2(Goal, Path, Set, Actions).

    %% valid_actions2(Goal,Path,Actions0),
    %% ( option(paramodulation(0)) ->
    %%   filter_top_pred(Actions0, para, Actions)
    %% ; Actions = Actions0
    %% ).

filter_top_pred([], _, []).
filter_top_pred([A|As], TopPred, Bs):-
    ( A =.. [TopPred|_] -> filter_top_pred(As, TopPred, Bs)
    ; Bs = [A|Bs1], filter_top_pred(As, TopPred, Bs1)
    ).


%% print proofs
%% print_my_proof(+Proof, +Type):- Type in {orig, substituted, both}
print_my_proof([], _).
print_my_proof([lem(Lit)|Proof], Type):- !,
    format('   ~w: ~t', ['Lemma    ']),
    print_term(Lit, [indent_arguments(false)]),
    nl,
    print_my_proof(Proof, Type).
print_my_proof([P|Proof], Type):-
    P =.. [Head, Orig-Substituted],
    ( Head = init -> Name = "Init"
    ; Head = red -> Name = "Reduction"
    ; Head = ext -> Name = "Extension"
    ; Head = para -> Name = "Paramodulation"
    ),
    write('   '), write(Name), write(': \t'),

    ( Type == orig -> print_term(Orig, [indent_arguments(false)])
    ; Type == substituted -> print_term(Substituted, [indent_arguments(false)])
    ; Type == both -> print_term(Orig, [indent_arguments(false)]), nl, write('\t\t -> '), print_term(Substituted, [indent_arguments(false)])
    ),
    nl,
    print_my_proof(Proof, Type).



print_kb():-
    findall(Ax, (
                 lit(_E,NegL,Cla,_,_,_),
                 Ax = lit([NegL|Cla]),
                 print_term(Ax, [indent_arguments(false)]), nl
               ), Axs
           ),
    length(Axs, L),
    format("Kb contains ~d axioms \n\n", [L]).




proof_clauses([], _).
proof_clauses([init(_)|Proof], Stream):- !,
    format(Stream, '\ninit.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([lem(_)|Proof], Stream):- !,
    format(Stream, '\nlemma.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([red(_)|Proof], Stream):- !,
    format(Stream, '\nreduction.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([para(Orig-_Substituted)|Proof], Stream):- !,
    Orig = [Goal, Pos, LHS, RHS, Cla, Dir],
    format(Stream, '\nparamodulation.\n', []),
    rewrite_for_print([Goal], [Goal1]),
    copy_term(Goal1, Goal2), numbervars(Goal2, 0, _),
    format(Stream, "~w.\n", [Goal2]),
    format(Stream, "~w.\n", [Pos]),
    format(Stream, "~w.\n", [Dir]),
    print_clause([neg(eq(LHS,RHS))|Cla], Stream),
    proof_clauses(Proof, Stream).
proof_clauses([ext(Orig-_Substituted)|Proof], Stream):- !,
    Orig = [Goal, OrigC],
    format(Stream, '\nextension.\n', []),
    rewrite_for_print([Goal], [Goal1]),
    copy_term(Goal1, Goal2), numbervars(Goal2, 0, _),
    format(Stream, "~w.\n", [Goal2]),
    print_clause(OrigC, Stream),
    proof_clauses(Proof, Stream).

print_clause(Clause, Stream):-
    rewrite_for_print(Clause, Clause0),
    copy_term(Clause0, Clause1), numbervars(Clause1, 0, _),
    Clause1 = [NegHead|Body],
    ( NegHead = neg(Head) -> true
    ; Head = neg(NegHead)
    ),
    format(Stream, '~w', [Head]),
    length(Body, BLen),
    ( BLen > 0 -> Body = [B0 | Brest],
      format(Stream, ":-\n\t~w",[B0]),
      findall(B, (
                  member(B, Brest),
                  format(Stream, ', ~w', [B])
                 ), _
             )
    ; true
    ),
    format(Stream, '.\n', []).


rewrite_for_print(A, B):-
    ( var(A) -> B=A
    ; A = (#) -> B = hashMark
    ; atomic(A) -> B=A
    ; A = [_|_] -> maplist(rewrite_for_print,A,B)             
    ; A =.. [Head|Args],
      maplist(rewrite_for_print, Args, Args2),
      ( Head == (=) -> Head2 = eq
      ; Head == (-) -> Head2 = neg
      ; Head2 = Head
      ),
      B =.. [Head2|Args2]
    ).


update_subst(Subst, _, _, Subst):- !.
update_subst(Subst, Key, Vars, Subst1):-
    p_hashtbl_put(Subst, Key, Vars, Subst1).

display_subst(_):- !.
display_subst(Subst):-
    writeln("Subst    "),
    findall(_, (
                p_hashtbl_enumerate(Subst, Key, Value),
                write(Key), write(": "), print_term(Value, [indent_arguments(false)]), nl
            ), _
           ).

subst2preds(Subst, Preds):-
    bagof(subst(Key,Var), Vars^(
              p_hashtbl_enumerate(Subst, Key, Vars),
              member(Var, Vars)
          ), Preds
         ), !.
subst2preds(_, []).

update_lem_req([], _, LemReq, LemReq).
update_lem_req([P|Path], PLen, Acc, LemReq):-
    ( select(L-Req, Acc, Rest), L == P ->
      Req2 is max(Req, PLen),
      LemReq = [P-Req2|LemReq2],
      update_lem_req(Path, PLen, Rest, LemReq2)
    ; LemReq = [P-PLen|LemReq2],
      update_lem_req(Path, PLen, Acc, LemReq2)
    ).
filter_lemmas([], _, []).
filter_lemmas([L-D|As], PLen, Bs):-
    ( D > PLen -> filter_lemmas(As, PLen, Bs)
    ; Bs = [L-D|Bs2], filter_lemmas(As, PLen, Bs2)
    ).
extract_lemmas([], LemReq, LemReq, []).
extract_lemmas([L|Ls], LemReq, LemReq2, NewLem):-
    ( select(L2-D, LemReq, Rest), L2 == L ->
      NewLem = [L-D|NewLem2],
      extract_lemmas(Ls, Rest, LemReq2, NewLem2)
    ; NewLem = [L-0|NewLem2],
      %% copy_term(L, L2), numbervars(L2),
      %% ( lemma(L2, _) -> true ; assert(lemma(L2, L)) ),
      extract_lemmas(Ls, LemReq, LemReq2, NewLem2)
    ).
                   


tab_comp(goal,  tableau(Goal, _Path, _Lem, _LemReq, _Todos, _Subst, _Proof), Goal).
tab_comp(path,  tableau(_Goal, Path, _Lem, _LemReq, _Todos, _Subst, _Proof), Path).
tab_comp(lem,   tableau(_Goal, _Path, Lem, _LemReq, _Todos, _Subst, _Proof), Lem).
tab_comp(todos, tableau(_Goal, _Path, _Lem, _LemReq, Todos, _Subst, _Proof), Todos).
tab_comp(subst, tableau(_Goal, _Path, _Lem, _LemReq, _Todos, Subst, _Proof), Subst).
tab_comp(proof, tableau(_Goal, _Path, _Lem, _LemReq, _Todos, _Subst, Proof), Proof).
