/*
   This file is part of the hashtbl library.

   hashtbl is free software; you can redistribute it and/or modify it under
   the terms of the GNU LGPL. See README.md for details.
 */

:- module(tests, [run_all_tests/0]).

/** <module> Testing utilities for the hashtbl library

@author Gergö Barany <gergo@tud.at>
@license LGPL

 */

:- use_module('../nb_hashtbl').
:- use_module('../p_hashtbl').

%! run_all_tests is det
%
%  Run unit tests for the hash table modules, as well as some performance
%  tests.
run_all_tests :-
    run_tests,
    timing_tests.

timing_tests :-
    timing_test(10_000),
    timing_test(15_000),
    timing_test(20_000),
    timing_test(25_000),
    timing_test(30_000),
    timing_test(35_000).

timing_test(N) :-
    nb_timing_test(N),
    p_timing_test(N).

nb_timing_test(N) :-
    format('running ~w~n', [nb_timing_test(N)]),
    time(nb_timing_test_(N)).

nb_timing_test_(N) :-
    empty_nb_hashtbl(T),
    \+ (
        between(1, N, I),
        nb_hashtbl_put(T, I, I),
        false
    ),
    nb_hashtbl_get(T, 42, _).

p_timing_test(N) :-
    format('running ~w~n', [p_timing_test(N)]),
    time(p_timing_test_(N)).

p_timing_test_(N) :-
    empty_p_hashtbl(T),
    p_timing_test_(T, 1, N).

p_timing_test_(T, I, N) :-
    I < N,
    !,
    p_hashtbl_put(T, I, I, T1),
    I1 is I + 1,
    p_timing_test_(T1, I1, N).
p_timing_test_(T, N, N) :-
    p_hashtbl_get(T, 42, _).
