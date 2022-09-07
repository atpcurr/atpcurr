/*
   This file is part of the hashtbl library.

   hashtbl is free software; you can redistribute it and/or modify it under
   the terms of the GNU LGPL. See README.md for details.
 */

:- module(utils, [
    hashtbl_default_size/1,
    hashtbl_bucket/5,
    hashtbl_load/2,
    hashtbl_buckets/2,
    hashtbl_get/3,
    hashtbl_get_all/3,
    hashtbl_enumerate/3,
    hashtbl_to_list/2,
    hashtbl_map/3,
    hashtbl_fold/4,
    hashtbl_iter/2,
    key_value_cons/4
    ]).

/** <module> Common utilities of the hashtbl library

Both variants of the hashtbl library share a common data representation: A
hash table is a term nb_hashtbl/2 or p_hashtbl/2. The first argument
contains metadata such as the hash table's current load. The second is a
term bucket/N containing the hash buckets. Hash buckets are lists of
Key-Values pairs where Key is a hash table key (a ground term) and Values is
the list of Values associated with that key. Each key only occurs once in
the table. When several values are added for the same key, later ones come
before the older ones in the Values list. They have "higher priority" and
are said to "shadow" the older values.

Due to this common representation of hash tables, many operations are
identical on the two variants, differing only in the outermost functor.
These non-destructive common operations, such as getting values from the
table, or mapping higher-order predicates over the table, are defined in
this module.

The concrete implementations of the hash tables use the predicates from this
module. This is the only intended use of this module: It should be treated
as internal to the library. Clients of the library should use one of the
concrete hash table modules.

@author Gergö Barany <gergo@tud.at>
@license LGPL

 */

%! hashtbl_default_size(-N) is det
%
%  N is the default number of buckets in a newly created hash table.
hashtbl_default_size(31).

%! hashtbl_bucket(+Table, +Key, -BucketTerm, -BucketIdx, -Bucket) is det
%
%  Finds the hash bucket in Table for the given Key. BucketTerm is the
%  Table's term holding the hash buckets, BucketIdx is the argument index
%  into the BucketTerm (as for arg/3) of the hash bucket corresponding to
%  the Key, and Bucket is the corresponding hash bucket. Always succeeds,
%  even if Key is not in the Table.
hashtbl_bucket(Table, Key, BucketTerm, BucketIdx, Bucket) :-
    arg(2, Table, BucketTerm),
    functor(BucketTerm, buckets, Buckets),
    term_hash(Key, Hash),
    BucketIdx is Hash rem Buckets + 1,
    arg(BucketIdx, BucketTerm, Bucket).

%! hashtbl_load(+Table, -Load) is det
%
%  Load is the current number of keys stored in Table.
hashtbl_load(Table, Load) :-
    arg(1, Table, meta(Load)).

%! hashtbl_buckets(+Table, -Buckets) is det
%
%  Buckets is the number of hash buckets in Table.
hashtbl_buckets(Table, Buckets) :-
    arg(2, Table, BucketTerm),
    functor(BucketTerm, buckets, Buckets).

%! hashtbl_get(+Table, +Key, -Value) is semidet
%
%  Gets the most recently stored Value for Key in Table, if any. Fails if no
%  values are stored for Key. There is no separate predicate for membership
%  checks, use =|nb_hashtbl_get(Table, Key, _)|= to test whether Key is
%  present in Table.
hashtbl_get(Table, Key, Value) :-
    hashtbl_bucket(Table, Key, _BucketTerm, _BucketIdx, Bucket),
    memberchk(Key-[Value|_], Bucket).

%! hashtbl_get_all(+Table, +Key, -Value) is nondet
%
%  On backtracking, enumerates every Value associated with Key in Table.
%  Fails if no values are stored for Key. The order of enumeration is the
%  most recently added value for Key first (the same as the solution for
%  nb_hashtbl_get/3), then shadowed ones.
hashtbl_get_all(Table, Key, Value) :-
    hashtbl_bucket(Table, Key, _BucketTerm, _BucketIdx, Bucket),
    member(Key-Values, Bucket),
    member(Value, Values).

%! hashtbl_enumerate(+Table, -Key, -Value) is nondet
%
%  On backtracking, enumerates every Key-Value pair stored in the Table.
%  Fails if the table is empty. If several values are stored for the same
%  key, their order of enumeration is most recent first, as in
%  hashtbl_get_all/3. The ordering is otherwise unspecified.
%
%  If Key is ground, this behaves like hashtbl_get_all/3 for that Key.
%  However, hashtbl_get_all/3 is more efficient in this case.
hashtbl_enumerate(Table, Key, Value) :-
    arg(2, Table, BucketTerm),
    arg(_Idx, BucketTerm, Bucket),
    member(Key-Values, Bucket),
    member(Value, Values).

%! hashtbl_to_list(+Table, -Pairs) is det
%
%  Unifies Pairs with a list of all Key-Value pairs in the order as
%  enumerated by nb_hashtbl_enumerate/3.
hashtbl_to_list(Table, Pairs) :-
    hashtbl_fold(Table, key_value_cons, [], Pairs0),
    reverse(Pairs0, Pairs).

%! key_value_cons(?Key, ?Value, ?Acc, ?List) is det
%
%  List is a list with head Key-Value and tail Acc.
key_value_cons(Key, Value, Acc, [Key-Value|Acc]).

%! hashtbl_call_map_goal(:Goal, +KVs, -KVs1) is nondet
%
%  If KV is a Key-Values pair, calls =|Goal(K, V, V1)|= for each V in Values
%  and unifies KVs1 with a list of the corresponding Key-V1 pairs.
%  Backtracks if Goal backtracks.
:- meta_predicate hashtbl_call_map_goal(3, *, *).
hashtbl_call_map_goal(Goal, K-Values, K-Values1) :-
    maplist(call(Goal, K), Values, Values1).

%! hashtbl_map(+Table, :Goal, -TableOut) is nondet
%
%  For every Key and Value in Table, calls =|Goal(Key, Value, Value1)|= and
%  unifies TableOut with a hash table containing all Key-Value1 pairs.
%  Deterministic if Goal is deterministic. If Goal backtracks,
%  hashtbl_map/3 enumerates several TableOut tables accordingly.
:- meta_predicate hashtbl_map(+, 3, *).
hashtbl_map(Table, Goal, TableOut) :-
    Table =.. [Hashtbl, Metadata, BucketTerm],
    BucketTerm =.. [buckets | Buckets],
    maplist(maplist(hashtbl_call_map_goal(Goal)), Buckets, BucketsOut),
    BucketTermOut =.. [buckets | BucketsOut],
    functor(TableOut, Hashtbl, 2),
    TableOut =.. [Hashtbl, Metadata, BucketTermOut].

%! hashtbl_call_fold_goal(:Goal, +KVs, +Acc, -Result) is nondet
%
%  If KVs is a Key-Values pair, calls =|Goal(Key, Value, Acc, Result)|= for
%  each Key and each corresponding Value. Backtracks if Goal backtracks.
:- meta_predicate hashtbl_call_fold_goal(4, *, *, *).
hashtbl_call_fold_goal(Goal, K-Values, Acc, Result) :-
    foldl(call(Goal, K), Values, Acc, Result).

%! hashtbl_fold(+Table, :Goal, +Acc, -Result) is nondet
%
%  Folds Goal over every Key and Value in the Table. Calls =|Goal(Key,
%  Value, Acc, Result)|=, using each call's Result as the next call's
%  accumulator Acc, and unifying Result with the final call's Result.
%  Deterministic if Goal is deterministic. If Goal backtracks, enumerates
%  several results accordingly.
:- meta_predicate hashtbl_fold(+, 4, +, *).
hashtbl_fold(Table, Goal, Acc, Result) :-
    arg(2, Table, BucketTerm),
    BucketTerm =.. [buckets | Buckets],
    foldl(foldl(hashtbl_call_fold_goal(Goal)), Buckets, Acc, Result).

%! hashtbl_call_iter_goal(:Goal, +KVs) is nondet
%
%  If KVs is a Key-Values pair, calls =|Goal(Key, Value)|= on each Key and
%  each corresponding Value. Backtracks if Goal backtracks.
:- meta_predicate hashtbl_call_iter_goal(2, *).
hashtbl_call_iter_goal(Goal, K-Values) :-
    maplist(call(Goal, K), Values).

%! hashtbl_iter(+Table, :Goal) is nondet
%
%  Calls =|Goal(Key, Value)|= for every Key and Value stored in Table. This
%  is useful to ensure that all entries satisfy some predicate, or for
%  Goal's side effects. Deterministic if Goal is deterministic.
:- meta_predicate hashtbl_iter(+, 2).
hashtbl_iter(Table, Goal) :-
    arg(2, Table, BucketTerm),
    BucketTerm =.. [buckets | Buckets],
    maplist(maplist(hashtbl_call_iter_goal(Goal)), Buckets).


% Various utilities used by the tests of the concrete hash table
% implementations. *Not* exported to avoid polluting the interface, even if
% it's only an internal one. Also, not commented.
test_hashtbl_incr(_K, V, V1) :-
    V1 is V + 1.

test_hashtbl_sum(_K, V, Acc, Sum) :-
    Sum is Acc + V.

test_hashtbl_cons(Head, Tail, Acc, cons(Head-Tail, Acc)).

test_hashtbl_nb_sum(Sum, _K, V) :-
    Sum = sum(Acc),
    Acc1 is Acc + V,
    nb_setarg(1, Sum, Acc1).

test_k_ab_table(k, a).
test_k_ab_table(k, b).

always_false(_, _) :-
    false.
