/* 
   This file is part of the hashtbl library.

   hashtbl is free software; you can redistribute it and/or modify it under
   the terms of the GNU LGPL. See README.md for details.
 */

:- module(p_hashtbl, [
    empty_p_hashtbl/1,
    empty_p_hashtbl/2,
    p_hashtbl_put/4,
    p_hashtbl_set/4,
    p_hashtbl_get/3,
    p_hashtbl_get_all/3,
    p_hashtbl_get_default/5,
    p_hashtbl_delete/3,
    p_hashtbl_enumerate/3,
    p_hashtbl_to_list/2,
    list_to_p_hashtbl/2,
    list_to_p_hashtbl/3,
    p_hashtbl_map/3,
    p_hashtbl_fold/4,
    p_hashtbl_iter/2,
    p_hashtbl_unfold/2
    ]).

/** <module> Pure hash tables

This module defines pure hash tables. All operations are non-destructive:
Any "change" to a hash table (adding/deleting elements) produces a new hash
table. Copying is avoided as much as possible, i.e., the old and new tables
share values. This may lead to surprises if variables in the table are bound
later on (or if they are modified destructively).

@author Gergö Barany <gergo@tud.at>
@license LGPL

 */

:- use_module(hashtbl/utils).

%! empty_p_hashtbl(-Table) is det
%
%  Unifies Table with a newly created empty hash table of a default size.
empty_p_hashtbl(Table) :-
    hashtbl_default_size(Size),
    empty_p_hashtbl(Table, Size).

%! empty_p_hashtbl(-Table, +Size) is det
%
%  Unifies Table with a newly created empty hash table with the number of
%  buckets given by Size.
%
%  @throws Type or domain error if Size is not a non-negative integer.
empty_p_hashtbl(Table, Size) :-
    Table = p_hashtbl([], BucketTerm),
    functor(BucketTerm, buckets, Size),
    term_variables(BucketTerm, Buckets),
    maplist(=([]), Buckets).

%! copy_term_idx_arg(+Term, +Idx, +Arg, -Copy) is det
%
%  Unifies Copy with a copy of Term, except that Copy's argument at index
%  Idx is Arg instead of Term's argument at index Idx. All other arguments
%  are shared between Term and Copy.
copy_term_idx_arg(Term, Idx, Arg, Copy) :-
    functor(Term, Functor, Arity),
    functor(Copy, Functor, Arity),
    copy_arg_except(Term, 1, Arity, Idx, Arg, Copy).

%! copy_arg_except(+Term, +J, +N, +Idx, +Arg, ?Copy) is det
%
%  Auxiliary predicate for copy_term_idx_arg/4. Unifies arguments J to N of
%  Copy with the corresponding arguments of Term, except that it unifies
%  argument Idx with Arg.
copy_arg_except(Term, J, N, I, Arg, Copy) :-
    (   J =< N
    ->  (   J = I
        ->  arg(I, Copy, Arg)
        ;   arg(J, Term, A),
            arg(J, Copy, A) ),
        J1 is J + 1,
        copy_arg_except(Term, J1, N, I, Arg, Copy)
    ;   true ).

%! p_hashtbl_put(+Table, +Key, +Value, -TableOut) is det
%
%  TableOut is a hash table like Table, except that in TableOut Key is
%  mapped to Value. If Key is already mapped to some values in Table, those
%  mappings are present but shadowed by Value in TableOut.
p_hashtbl_put(Table, Key, Value, Table1) :-
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   selectchk(Key-Values, Bucket, Key-Values1, Bucket1)
    ->  Values1 = [Value|Values]
    ;   Bucket1 = [Key-[Value]|Bucket] ),
    copy_term_idx_arg(BucketTerm, BucketIdx, Bucket1, BucketTerm1),
    copy_term_idx_arg(Table, 2, BucketTerm1, Table1).

%! p_hashtbl_set(+Table, +Key, +Value, -TableOut) is det
%
%  TableOut is a hash table like Table, except that in TableOut Key is
%  mapped to Value. If Key is already mapped to some values in Table, the
%  most recent one of those is replaced by Value. Other values for Key
%  remain shadowed in TableOut.
p_hashtbl_set(Table, Key, Value, Table1) :-
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   selectchk(Key-[_Old|Rest], Bucket, Key-[Value|Rest], Bucket1)
    ->  true
    ;   Bucket1 = [Key-[Value]|Bucket] ),
    copy_term_idx_arg(BucketTerm, BucketIdx, Bucket1, BucketTerm1),
    copy_term_idx_arg(Table, 2, BucketTerm1, Table1).

%! p_hashtbl_get(+Table, +Key, -Value) is semidet
%
%  Gets the most recently stored Value for Key in Table, if any. Fails if no
%  values are stored for Key. There is no separate predicate for membership
%  checks, use =|p_hashtbl_get(Table, Key, _)|= to test whether Key is
%  present in Table.
p_hashtbl_get(Table, Key, Value) :-
    hashtbl_get(Table, Key, Value).

%! p_hashtbl_get_all(+Table, +Key, -Value) is nondet
%
%  On backtracking, enumerates every Value associated with Key in Table.
%  Fails if no values are stored for Key. The order of enumeration is the
%  most recently added value for Key first (the same as the solution for
%  p_hashtbl_get/3), then shadowed ones.
p_hashtbl_get_all(Table, Key, Value) :-
    hashtbl_get_all(Table, Key, Value).

%! p_hashtbl_get_default(+Table, +Key, ?Default, -Value, -TableOut) is det
%
%  If Table contains an entry for Key, unifies Value with the corresponding
%  value as in p_hashtbl_get/3 and TableOut with Table. Otherwise, unifies
%  Value with Default and adds this value to the Table under Key (as by
%  p_hashtbl_put/4) and unifies TableOut with the resulting table.
p_hashtbl_get_default(Table, Key, Default, Value, Table1) :-
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   memberchk(Key-[Value|_], Bucket)
    ->  Table1 = Table
    ;   Value = Default,
        Bucket1 = [Key-[Value]|Bucket],
        copy_term_idx_arg(BucketTerm, BucketIdx, Bucket1, BucketTerm1),
        copy_term_idx_arg(Table, 2, BucketTerm1, Table1) ).

%! p_hashtbl_delete(!Table, +Key, -TableOut) is det
%
%  Deletes the most recent value stored under Key in Table, if any. Does
%  nothing otherwise; succeeds always.
p_hashtbl_delete(Table, Key, Table1) :-
    hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket),
    (   selectchk(Key-[_Old, Next | Rest], Bucket, Key-[Next|Rest], Bucket1)
    ->  true
    ;   selectchk(Key-[_Old], Bucket, Bucket1)
    ->  true
    ;   Bucket1 = Bucket ),
    copy_term_idx_arg(BucketTerm, BucketIdx, Bucket1, BucketTerm1),
    copy_term_idx_arg(Table, 2, BucketTerm1, Table1).

%! p_hashtbl_enumerate(+Table, -Key, -Value) is nondet
%
%  On backtracking, enumerates every Key-Value pair stored in the Table.
%  Fails if the table is empty. If several values are stored for the same
%  key, their order of enumeration is most recent first, as in
%  p_hashtbl_get_all/3. The ordering is otherwise unspecified.
%
%  If Key is ground, this behaves like p_hashtbl_get_all/3 for that Key.
%  However, p_hashtbl_get_all/3 is more efficient in this case.
p_hashtbl_enumerate(Table, Key, Value) :-
    hashtbl_enumerate(Table, Key, Value).

%! p_hashtbl_to_list(+Table, -Pairs) is det
%
%  Unifies Pairs with a list of all Key-Value pairs in the order as
%  enumerated by p_hashtbl_enumerate/3.
p_hashtbl_to_list(Table, Pairs) :-
    hashtbl_to_list(Table, Pairs).

%! list_to_p_hashtbl(+Pairs, -Table) is semidet
%
%  If Pairs is a list of Key-Value pairs, unifies Table with a corresponding
%  hash table of a default size containing all those pairs. If there are
%  several entries for the same Key in the list, later entries will shadow
%  earlier ones in the Table.
list_to_p_hashtbl(Pairs, Table) :-
    hashtbl_default_size(Size),
    list_to_p_hashtbl(Pairs, Table, Size).

%! p_hashtbl_put_pair(!Table, +Pair) is det
%
%  If Pair is a Key-Value pair, Value is put into the Table under Key as by
%  p_hashtbl_put/3.
p_hashtbl_put_pair(Key-Value, Table, Table1) :-
    p_hashtbl_put(Table, Key, Value, Table1).

%! list_to_p_hashtbl(+Pairs, -Table, +Size) is semidet
%
%  As list_to_p_hashtbl/2, but the hash table has an initial number of
%  buckets given by Size.
%
%  @throws Type or domain error if Size is not a non-negative integer.
list_to_p_hashtbl(Pairs, Table, Size) :-
    empty_p_hashtbl(Table0, Size),
    foldl(p_hashtbl_put_pair, Pairs, Table0, Table).

%! p_hashtbl_map(+Table, :Goal, -TableOut) is nondet
%
%  For every Key and Value in Table, calls =|Goal(Key, Value, Value1)|= and
%  unifies TableOut with a hash table containing all Key-Value1 pairs.
%  Deterministic if Goal is deterministic. If Goal backtracks,
%  p_hashtbl_map/3 enumerates several TableOut tables accordingly.
:- meta_predicate p_hashtbl_map(+, 3, *).
p_hashtbl_map(Table, Goal, TableOut) :-
    hashtbl_map(Table, Goal, TableOut).

%! p_hashtbl_fold(+Table, :Goal, +Acc, -Result) is nondet
%
%  Folds Goal over every Key and Value in the Table. Calls =|Goal(Key,
%  Value, Acc, Result)|=, using each call's Result as the next call's
%  accumulator Acc, and unifying Result with the final call's Result.
%  Deterministic if Goal is deterministic. If Goal backtracks, enumerates
%  several results accordingly.
:- meta_predicate p_hashtbl_fold(+, 4, +, *).
p_hashtbl_fold(Table, Goal, Acc, Result) :-
    hashtbl_fold(Table, Goal, Acc, Result).

%! p_hashtbl_iter(+Table, :Goal) is nondet
%
%  Calls =|Goal(Key, Value)|= for every Key and Value stored in Table. This
%  is useful to ensure that all entries satisfy some predicate, or for
%  Goal's side effects. Deterministic if Goal is deterministic.
:- meta_predicate p_hashtbl_iter(+, 2).
p_hashtbl_iter(Table, Goal) :-
    hashtbl_iter(Table, Goal).

%! p_hashtbl_unfold(:Goal, -Table) is det
%
%  Unfolds the binary goal Goal into the Table: Unifies Table with a hash
%  table containing a Key-Value entry for every solution of =|Goal(Key,
%  Value)|=. Table is empty if Goal has no solutions. Later solutions of
%  Goal will shadow earlier ones in Table.
:- meta_predicate p_hashtbl_unfold(2, -).
p_hashtbl_unfold(Goal, Table) :-
    (   setof(K-V, call(Goal, K, V), KVs)
    ->  true
    ;   KVs = [] ),
    list_to_p_hashtbl(KVs, Table).


:- begin_tests(p_hashtbl).

test(copy_1, true(Copy == f(c, b))) :-
    copy_term_idx_arg(f(a, b), 1, c, Copy).

test(copy_2, true(Copy == f(a, c))) :-
    copy_term_idx_arg(f(a, b), 2, c, Copy).

test(put_get_delete, true((One, Two) == (1, 2))) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_put(T1, x, 2, T2),
    p_hashtbl_get(T2, x, Two),
    p_hashtbl_delete(T2, x, T3),
    p_hashtbl_get(T3, x, One),
    p_hashtbl_delete(T3, x, T4),
    \+ p_hashtbl_get(T4, x, _).

test(put_get_all, all(X == [2, 1])) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_put(T1, x, 2, T2),
    p_hashtbl_get_all(T2, x, X).

test(put_get_default, true((X, Y) == (1, default(2)))) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_get_default(T1, x, default(unused), X, T2),
    p_hashtbl_delete(T2, x, T3),
    \+ p_hashtbl_get(T3, x, _),
    p_hashtbl_get_default(T3, x, default(2), Y, _T4).

test(put_set_delete, true((A, B, C, D) == (1, 2, 3, 1))) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_get(T1, x, A),
    p_hashtbl_put(T1, x, 2, T2),
    p_hashtbl_get(T2, x, B),
    p_hashtbl_set(T2, x, 3, T3),
    p_hashtbl_get(T3, x, C),
    p_hashtbl_delete(T3, x, T4),
    p_hashtbl_get(T4, x, D),
    p_hashtbl_delete(T4, x, T5),
    \+ p_hashtbl_get(T5, x, _),
    p_hashtbl_delete(T5, x, T6),
    \+ p_hashtbl_get(T6, x, _).

test(set_set_delete, true(X == 2)) :-
    empty_p_hashtbl(T),
    p_hashtbl_set(T, x, 1, T1),
    p_hashtbl_set(T1, x, 2, T2),
    p_hashtbl_get(T2, x, X),
    p_hashtbl_delete(T2, x, T3),
    \+ p_hashtbl_get(T3, x, _).

test(enumerate, set(K-V == [x-1, y-2, z-3])) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_put(T1, y, 2, T2),
    p_hashtbl_put(T2, z, 3, T3),
    p_hashtbl_enumerate(T3, K, V).

test(to_list, true(Elements == [x-1, y-2, z-3])) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_put(T1, y, 2, T2),
    p_hashtbl_put(T2, z, 3, T3),
    p_hashtbl_to_list(T3, List),
    sort(List, Elements).

test(to_list_order, true(Elements == [x-3, x-2, x-1])) :-
    empty_p_hashtbl(T),
    p_hashtbl_put(T, x, 1, T1),
    p_hashtbl_put(T1, x, 2, T2),
    p_hashtbl_put(T2, x, 3, T3),
    p_hashtbl_to_list(T3, Elements).

test(list_to, set(K-V == [x-1, y-2, z-3])) :-
    list_to_p_hashtbl([z-3, y-2, x-1], T),
    p_hashtbl_enumerate(T, K, V).

test(map, set(K-V == [x-2, y-3, z-4])) :-
    list_to_p_hashtbl([z-3, y-2, x-1], T),
    p_hashtbl_map(T, utils:test_hashtbl_incr, T1),
    p_hashtbl_enumerate(T1, K, V).

test(fold, true(Sum == 6)) :-
    list_to_p_hashtbl([z-3, y-2, x-1], T),
    p_hashtbl_fold(T, utils:test_hashtbl_sum, 0, Sum).

test(fold_noncommutative,
     true(List == cons(x-1, cons(x-2, cons(x-3, nil))))) :-
    list_to_p_hashtbl([x-1, x-2, x-3], T),
    p_hashtbl_fold(T, utils:test_hashtbl_cons, nil, List).

test(iter, true(Sum == sum(6))) :-
    list_to_p_hashtbl([z-3, y-2, x-1], T),
    Sum = sum(0),
    p_hashtbl_iter(T, utils:test_hashtbl_nb_sum(Sum)).

test(unfold, true(Unfold = p_hashtbl_unfold(_Goal, _Table))) :-
    p_hashtbl_unfold(current_predicate, T),
    p_hashtbl_get(T, p_hashtbl_unfold, Unfold).

test(unfold_order, all(Values == [b, a])) :-
    p_hashtbl_unfold(utils:test_k_ab_table, T),
    p_hashtbl_get_all(T, k, Values).

test(unfold_empty, true(Elements == [])) :-
    p_hashtbl_unfold(utils:always_false, T),
    p_hashtbl_to_list(T, Elements).

test(backtracking, [true(Elements == [])]) :-
    empty_p_hashtbl(T),
    (   p_hashtbl_put(T, a, b, _T1),
        false
    ;   p_hashtbl_put(T, c, d, _T2),
        false
    ;   p_hashtbl_put(T, e, f, _T3) ),
    p_hashtbl_to_list(T, List),
    sort(List, Elements).

:- end_tests(p_hashtbl).
