/* 
   This file is part of the hashtbl library.

   hashtbl is free software; you can redistribute it and/or modify it under
   the terms of the GNU LGPL. See README.md for details.
 */

:- module(nb_hashtbl, [
    empty_nb_hashtbl/1,
    empty_nb_hashtbl/2,
    nb_hashtbl_put/3,
    nb_hashtbl_set/3,
    nb_hashtbl_get/3,
    nb_hashtbl_get_all/3,
    nb_hashtbl_get_default/4,
    nb_hashtbl_delete/2,
    nb_hashtbl_enumerate/3,
    nb_hashtbl_to_list/2,
    list_to_nb_hashtbl/2,
    list_to_nb_hashtbl/3,
    nb_hashtbl_map/3,
    nb_hashtbl_fold/4,
    nb_hashtbl_iter/2,
    nb_hashtbl_unfold/2
    ]).

/** <module> Impure hash tables

This module defines impure (imperative) hash tables that allow destructive
updates.

The predicates in this module use destructive non-backtrackable updates to
implement the hash table. The basic operation used internally to implement
changes to the hash table is nb_linkarg/3. Use with care.

The user should take care never to copy a non-backtrackable hash table. This
includes never using asserta/1 or assertz/1 to store it in the database. If
the table is to be stored in a global variable, nb_linkval/2 should be used
for the purpose.

@author Gergö Barany <gergo@tud.at>
@license LGPL

 */

:- use_module(hashtbl/utils).

%! empty_nb_hashtbl(-Table) is det
%
%  Unifies Table with a newly created empty hash table of a default size.
empty_nb_hashtbl(Table) :-
    hashtbl_default_size(Size),
    empty_nb_hashtbl(Table, Size).

%! empty_nb_hashtbl(-Table, +Size) is det
%
%  Unifies Table with a newly created empty hash table with the number of
%  buckets given by Size.
%
%  @throws Type or domain error if Size is not a non-negative integer.
empty_nb_hashtbl(Table, Size) :-
    Table = nb_hashtbl(meta(0), BucketTerm),
    functor(BucketTerm, buckets, Size),
    term_variables(BucketTerm, Buckets),
    maplist(=([]), Buckets).

%! nb_hashtbl_put(!Table, +Key, +Value) is det
%
%  Puts the Value into the Table at Key. If there are already values stored
%  for Key, this new value will shadow them until it is deleted from the
%  table.
nb_hashtbl_put(Table, Key, Value) :-
    hashtbl_load(Table, Load),
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   member(KeyValues, Bucket),
        KeyValues = Key-Values
    ->  nb_linkarg(2, KeyValues, [Value|Values]),
        Load1 = Load
    ;   nb_linkarg(BucketIdx, BucketTerm, [Key-[Value]|Bucket]),
        Load1 is Load + 1 ),
    nb_hashtbl_maybe_resize(Table, Load1).

%! nb_hashtbl_set(!Table, +Key, +Value) is det
%
%  Sets the Value associated with Key in Table. If there are already values
%  stored for Key in Table, the most recent one will is overwritten. If that
%  entry shadowed earlier entries for Key, those remain shadowed and
%  unchanged.
nb_hashtbl_set(Table, Key, Value) :-
    hashtbl_load(Table, Load),
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   KeyValues = Key-Values,
        memberchk(KeyValues, Bucket)
    ->  (   Values = [_OldValue|_]
        ->  nb_linkarg(1, Values, Value)
        ;   assertion(Values = [_|_]) ),
        Load1 = Load
    ;   nb_linkarg(BucketIdx, BucketTerm, [Key-[Value]|Bucket]),
        Load1 is Load + 1 ),
    nb_hashtbl_maybe_resize(Table, Load1).

%! nb_hashtbl_get(+Table, +Key, -Value) is semidet
%
%  Gets the most recently stored Value for Key in Table, if any. Fails if no
%  values are stored for Key. There is no separate predicate for membership
%  checks, use =|nb_hashtbl_get(Table, Key, _)|= to test whether Key is
%  present in Table.
nb_hashtbl_get(Table, Key, Value) :-
    hashtbl_get(Table, Key, Value).

%! nb_hashtbl_get_all(+Table, +Key, -Value) is nondet
%
%  On backtracking, enumerates every Value associated with Key in Table.
%  Fails if no values are stored for Key. The order of enumeration is the
%  most recently added value for Key first (the same as the solution for
%  nb_hashtbl_get/3), then shadowed ones.
nb_hashtbl_get_all(Table, Key, Value) :-
    hashtbl_get_all(Table, Key, Value).

%! nb_hashtbl_get_default(!Table, +Key, ?Default, -Value) is det
%
%  If Table contains an entry for Key, unifies Value with the corresponding
%  value as in nb_hashtbl_get/3. Otherwise, unifies Value with Default and
%  adds this value to the Table under Key.
nb_hashtbl_get_default(Table, Key, Default, Value) :-
    hashtbl_load(Table, Load),
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   memberchk(Key-[Value|_], Bucket)
    ->  Load1 = Load
    ;   Value = Default,
        nb_linkarg(BucketIdx, BucketTerm, [Key-[Value]|Bucket]),
        Load1 is Load + 1 ),
    nb_hashtbl_maybe_resize(Table, Load1).

%! nb_hashtbl_delete(!Table, +Key) is det
%
%  Deletes the most recent value stored under Key in Table, if any. Does
%  nothing otherwise; succeeds always.
nb_hashtbl_delete(Table, Key) :-
    hashtbl_load(Table, Load),
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   member(KeyValues, Bucket),
        KeyValues = Key-Values
    ->  (   Values = [_Old, Next | Rest]
        ->  nb_linkarg(2, KeyValues, [Next|Rest]),
            Load1 = Load
        ;   select(Key-_Values, Bucket, BucketRest)
        ->  nb_linkarg(BucketIdx, BucketTerm, BucketRest),
            Load1 is Load - 1
        ;   assertion(select(Key-_Values, Bucket, _BucketRest)) )
    ;   Load1 = Load ),
    nb_hashtbl_maybe_resize(Table, Load1).

%! nb_hashtbl_maybe_resize(!Table, +Load) is det
%
%  Set the Table's stored load to the new value of Load. If the new load is
%  too high, destructively increase the capacity of the hash table (i.e.,
%  the number of buckets). All hash table entries are retained.
%  The load is deemed too high if Load / Capacity is greater than 1. The new
%  capacity is Capacity * 2 + 1. This ensures that if the old capacity was
%  of the form 2**N - 1, then the new one is 2**(N+1) - 1.
nb_hashtbl_maybe_resize(Table, Load) :-
    % First, adjust the table's load.
    arg(1, Table, Metadata),
    nb_linkarg(1, Metadata, Load),
    % Then, check if the load is too high, and resize the table if needed.
    hashtbl_buckets(Table, Capacity),
    LoadFactor is Load / Capacity,
    (   LoadFactor > 1
    ->  Capacity1 is Capacity * 2 + 1,
        nb_hashtbl_resize(Table, Capacity1)
    ;   true ).

%! nb_hashtbl_resize(!Table, +Capacity) is det
%
%  Table is resized to the given Capacity (number of buckets), retaining all
%  entries.
nb_hashtbl_resize(Table, Capacity) :-
    empty_nb_hashtbl(Table1, Capacity),
    arg(2, Table, BucketTerm),
    % Add all Key-Values pairs from Table to Table1.
    \+ (
        arg(_I, BucketTerm, Bucket),
        member(Key-Values, Bucket),
        ground(Key),
        hashtbl_bucket(Table1, Key, BucketTerm1, BucketIdx1, Bucket1),
        nb_linkarg(BucketIdx1, BucketTerm1, [Key-Values|Bucket1]),
        false
    ),
    % Replace Table's buckets by Table1's buckets, and we're done.
    arg(2, Table1, BucketTerm1),
    nb_linkarg(2, Table, BucketTerm1).

%! nb_hashtbl_enumerate(+Table, -Key, -Value) is nondet
%
%  On backtracking, enumerates every Key-Value pair stored in the Table.
%  Fails if the table is empty. If several values are stored for the same
%  key, their order of enumeration is most recent first, as in
%  nb_hashtbl_get_all/3. The ordering is otherwise unspecified.
%
%  If Key is ground, this behaves like nb_hashtbl_get_all/3 for that Key.
%  However, nb_hashtbl_get_all/3 is more efficient in this case.
nb_hashtbl_enumerate(Table, Key, Value) :-
    hashtbl_enumerate(Table, Key, Value).

%! nb_hashtbl_to_list(+Table, -Pairs) is det
%
%  Unifies Pairs with a list of all Key-Value pairs in the order as
%  enumerated by nb_hashtbl_enumerate/3.
nb_hashtbl_to_list(Table, Pairs) :-
    hashtbl_to_list(Table, Pairs).

%! list_to_nb_hashtbl(+Pairs, -Table) is semidet
%
%  If Pairs is a list of Key-Value pairs, unifies Table with a corresponding
%  hash table of a default size containing all those pairs. If there are
%  several entries for the same Key in the list, later entries will shadow
%  earlier ones in the Table.
list_to_nb_hashtbl(Pairs, Table) :-
    hashtbl_default_size(Size),
    list_to_nb_hashtbl(Pairs, Table, Size).

%! nb_hashtbl_put_pair(!Table, +Pair) is det
%
%  If Pair is a Key-Value pair, Value is put into the Table under Key as by
%  nb_hashtbl_put/3.
nb_hashtbl_put_pair(Table, Key-Value) :-
    nb_hashtbl_put(Table, Key, Value).

%! list_to_nb_hashtbl(+Pairs, -Table, +Size) is semidet
%
%  As list_to_nb_hashtbl/2, but the hash table has an initial number of
%  buckets given by Size.
%
%  @throws Type or domain error if Size is not a non-negative integer.
list_to_nb_hashtbl(Pairs, Table, Size) :-
    empty_nb_hashtbl(Table, Size),
    maplist(nb_hashtbl_put_pair(Table), Pairs).

%! nb_hashtbl_map(+Table, :Goal, -TableOut) is nondet
%
%  For every Key and Value in Table, calls =|Goal(Key, Value, Value1)|= and
%  unifies TableOut with a hash table containing all Key-Value1 pairs.
%  Deterministic if Goal is deterministic. If Goal backtracks,
%  nb_hashtbl_map/3 enumerates several TableOut tables accordingly.
:- meta_predicate nb_hashtbl_map(+, 3, *).
nb_hashtbl_map(Table, Goal, TableOut) :-
    hashtbl_map(Table, Goal, TableOut).

%! nb_hashtbl_fold(+Table, :Goal, +Acc, -Result) is nondet
%
%  Folds Goal over every Key and Value in the Table. Calls =|Goal(Key,
%  Value, Acc, Result)|=, using each call's Result as the next call's
%  accumulator Acc, and unifying Result with the final call's Result.
%  Deterministic if Goal is deterministic. If Goal backtracks, enumerates
%  several results accordingly.
:- meta_predicate nb_hashtbl_fold(+, 4, +, *).
nb_hashtbl_fold(Table, Goal, Acc, Result) :-
    hashtbl_fold(Table, Goal, Acc, Result).

%! nb_hashtbl_iter(+Table, :Goal) is nondet
%
%  Calls =|Goal(Key, Value)|= for every Key and Value stored in Table. This
%  is useful to ensure that all entries satisfy some predicate, or for
%  Goal's side effects. Deterministic if Goal is deterministic.
:- meta_predicate nb_hashtbl_iter(+, 2).
nb_hashtbl_iter(Table, Goal) :-
    hashtbl_iter(Table, Goal).

%! nb_hashtbl_unfold(:Goal, -Table) is det
%
%  Unfolds the binary goal Goal into the Table: Unifies Table with a hash
%  table containing a Key-Value entry for every solution of =|Goal(Key,
%  Value)|=. Table is empty if Goal has no solutions. Later solutions of
%  Goal will shadow earlier ones in Table.
:- meta_predicate nb_hashtbl_unfold(2, -).
nb_hashtbl_unfold(Goal, Table) :-
    empty_nb_hashtbl(Table),
    forall(call(Goal, K, V), nb_hashtbl_put(Table, K, V)).


:- begin_tests(nb_hashtbl).

test(put_get_delete, true((One, Two) == (1, 2))) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, x, 2),
    nb_hashtbl_get(T, x, Two),
    nb_hashtbl_delete(T, x),
    nb_hashtbl_get(T, x, One),
    nb_hashtbl_delete(T, x),
    \+ nb_hashtbl_get(T, x, _).

test(put_get_all, all(X == [2, 1])) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, x, 2),
    nb_hashtbl_get_all(T, x, X).

test(put_get_default, true((X, Y) == (1, default(2)))) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_get_default(T, x, default(unused), X),
    nb_hashtbl_delete(T, x),
    \+ nb_hashtbl_get(T, x, _),
    nb_hashtbl_get_default(T, x, default(2), Y).

test(put_set_delete, true((A, B, C, D) == (1, 2, 3, 1))) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_get(T, x, A),
    nb_hashtbl_put(T, x, 2),
    nb_hashtbl_get(T, x, B),
    nb_hashtbl_set(T, x, 3),
    nb_hashtbl_get(T, x, C),
    nb_hashtbl_delete(T, x),
    nb_hashtbl_get(T, x, D),
    nb_hashtbl_delete(T, x),
    \+ nb_hashtbl_get(T, x, _),
    nb_hashtbl_delete(T, x),
    \+ nb_hashtbl_get(T, x, _).

test(set_set_delete, true(X == 2)) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_set(T, x, 1),
    nb_hashtbl_set(T, x, 2),
    nb_hashtbl_get(T, x, X),
    nb_hashtbl_delete(T, x),
    \+ nb_hashtbl_get(T, x, _).

test(enumerate, set(K-V == [x-1, y-2, z-3])) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, y, 2),
    nb_hashtbl_put(T, z, 3),
    nb_hashtbl_enumerate(T, K, V).

test(to_list, true(Elements == [x-1, y-2, z-3])) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, y, 2),
    nb_hashtbl_put(T, z, 3),
    nb_hashtbl_to_list(T, List),
    sort(List, Elements).

test(to_list_order, true(Elements == [x-3, x-2, x-1])) :-
    empty_nb_hashtbl(T),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, x, 2),
    nb_hashtbl_put(T, x, 3),
    nb_hashtbl_to_list(T, Elements).

test(list_to, set(K-V == [x-1, y-2, z-3])) :-
    list_to_nb_hashtbl([z-3, y-2, x-1], T),
    nb_hashtbl_enumerate(T, K, V).

test(map, set(K-V == [x-2, y-3, z-4])) :-
    list_to_nb_hashtbl([z-3, y-2, x-1], T),
    nb_hashtbl_map(T, utils:test_hashtbl_incr, T1),
    nb_hashtbl_enumerate(T1, K, V).

test(fold, true(Sum == 6)) :-
    list_to_nb_hashtbl([z-3, y-2, x-1], T),
    nb_hashtbl_fold(T, utils:test_hashtbl_sum, 0, Sum).

test(fold_noncommutative,
     true(List == cons(x-1, cons(x-2, cons(x-3, nil))))) :-
    list_to_nb_hashtbl([x-1, x-2, x-3], T),
    nb_hashtbl_fold(T, utils:test_hashtbl_cons, nil, List).

test(iter, true(Sum == sum(6))) :-
    list_to_nb_hashtbl([z-3, y-2, x-1], T),
    Sum = sum(0),
    nb_hashtbl_iter(T, utils:test_hashtbl_nb_sum(Sum)).

test(unfold, true(Unfold = nb_hashtbl_unfold(_Goal, _Table))) :-
    nb_hashtbl_unfold(current_predicate, T),
    nb_hashtbl_get(T, nb_hashtbl_unfold, Unfold).

test(unfold_order, all(Values == [b, a])) :-
    nb_hashtbl_unfold(utils:test_k_ab_table, T),
    nb_hashtbl_get_all(T, k, Values).

test(unfold_empty, true(Elements == [])) :-
    nb_hashtbl_unfold(utils:always_false, T),
    nb_hashtbl_to_list(T, Elements).

test(backtracking, [true(Elements == [a-b, c-d, e-f])]) :-
    empty_nb_hashtbl(T),
    (   nb_hashtbl_put(T, a, b),
        false
    ;   nb_hashtbl_put(T, c, d),
        false
    ;   nb_hashtbl_put(T, e, f) ),
    nb_hashtbl_to_list(T, List),
    sort(List, Elements).

test(destructive_no_backtrack, [
     setup(\+ nb_current(nb_hashtbl_test_var, _)),
     cleanup(nb_delete(nb_hashtbl_test_var)),
     true(B-D == b-d)]) :-
    empty_nb_hashtbl(T),
    nb_linkval(nb_hashtbl_test_var, T),
    nb_hashtbl_put(T, a, b),
    nb_hashtbl_put(T, c, d),
    nb_getval(nb_hashtbl_test_var, T2),
    nb_hashtbl_get(T2, a, B),
    nb_hashtbl_get(T2, c, D).

test(destructive_backtrack, [
     setup(\+ nb_current(nb_hashtbl_test_var, _)),
     cleanup(nb_delete(nb_hashtbl_test_var)),
     true(B-D == b-d)]) :-
    (   empty_nb_hashtbl(T),
        nb_linkval(nb_hashtbl_test_var, T),
        nb_hashtbl_put(T, a, b),
        nb_hashtbl_put(T, c, d),
        false
    ;   nb_getval(nb_hashtbl_test_var, T2),
        nb_hashtbl_get(T2, a, B),
        nb_hashtbl_get(T2, c, D) ).

test(no_resize, [FinalBuckets == 1]) :-
    empty_nb_hashtbl(T, 1),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, x, 2),
    nb_hashtbl_set(T, x, 3),
    hashtbl_buckets(T, FinalBuckets).

test(resize, [FinalBuckets == 3]) :-
    empty_nb_hashtbl(T, 1),
    nb_hashtbl_put(T, x, 1),
    nb_hashtbl_put(T, y, 2),
    hashtbl_buckets(T, FinalBuckets).

:- end_tests(nb_hashtbl).
