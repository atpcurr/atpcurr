:- use_module(hashtbl/prolog/nb_hashtbl, [empty_nb_hashtbl/1
                                         ]).

:- [leancop_step].
:- [features].
:- [embed].

:- dynamic mc_param/2.
mc_param(collapse_vars,0).
% mc_param(n_dim,10000).
mc_param(lemma_features, 0).
mc_param(subst_features,0).

init_embed:-
    File = "theorems/robinson/robinson_1m1__1/robinson_1m1__1.p",
    Settings = [conj,nodef,n_dim(10000),comp(10),
                verbose,print_proof
               ],
    init_embed(File, Settings, _, _).

    
init_embed(File, Settings, [EmbStateP, EmbStateV, EmbActions], Result):-
    member(n_dim(NDim), Settings), assert(mc_param(n_dim,NDim)),
    assert(mc_param(collapse_vars,1)),

    init(File, Settings, State),
    State=state(_, _, Result),
    empty_nb_hashtbl(FHash),
    nb_linkval(fhash, FHash),
    logic_embed(State, FHash, both, EmbStateP, EmbStateV, EmbActions), !.

step_embed(ActionIndex, [EmbStateP, EmbStateV, EmbActions], Result):-
    step(ActionIndex, State),
    State=state(_, _, Result),
    nb_getval(fhash, FHash),
    logic_embed(State, FHash, both, EmbStateP, EmbStateV, EmbActions), !.


% state_status(+State, - ActionCount, -Result)
state_status(state(_, Actions, Result), AC, Result):-
    length(Actions, AC).
