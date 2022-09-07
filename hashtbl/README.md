# hashtbl

This library provides two implementations of hash tables in Prolog. Hash
tables store key-value pairs and provide predicates to add, look up, remove
entries as well as conversions to and from lists and higher order predicates
for mapping, folding, and iterating over hash tables. The hash table
variants differ in their approach to purity, i.e., what kind of side effects
their implementation uses.

## Examples

The `nb_hashtbl` module provides destructive ("non-backtrackable") hash
tables:

    :- use_module(library(nb_hashtbl)).
    ?- empty_nb_hashtbl(T),
       nb_hashtbl_set(T, x, 1),
       nb_hashtbl_set(T, y, 2),
       nb_hashtbl_get(T, x, X).
    T = ...,
    X = 1.

You can add the same key multiple times with `put`, keeping previous values,
or use `set` to replace the last stored value:

    ?- empty_nb_hashtbl(T),
       nb_hashtbl_put(T, x, 1),
       nb_hashtbl_put(T, x, 2),
       nb_hashtbl_to_list(T, Pairs).
    T = ...,
    Pairs = [x-2, x-1].

    ?- empty_nb_hashtbl(T),
       nb_hashtbl_put(T, x, 1),
       nb_hashtbl_set(T, x, 2),
       nb_hashtbl_to_list(T, Pairs).
    T = ...,
    Pairs = [x-2].

The `p_hashtbl` module provides non-destructive ("pure") hash tables:

    ?- list_to_p_hashtbl([x-1, y-2], T0),
       p_hashtbl_get(T0, x, X).
    T0 = ...,
    X = 1.

    ?- list_to_p_hashtbl([x-1, y-2], T0),
       p_hashtbl_delete(T0, x, T1),
       p_hashtbl_get(T1, x, X).
    false.

Both variants provide higher-order `map`, `fold`, and `iter` operations:

    hashtbl_sum(_Key, Value, Accumulator, Result) :-
        Result is Value + Accumulator.

    ?- list_to_p_hashtbl([x-3, y-2, z-1], T),
       p_hashtbl_fold(T, hashtbl_sum, 0, Sum).
    T = ...,
    Sum = 6.

## General information

All of the hash tables defined in this library use `term_hash/2` to hash a
_key_ that can be associated with one or more _values_ in the table. Due to
the requirements of `term_hash/2`, the key must always be ground. There are no
restrictions on the stored value.

Depending on which operation is used, adding a key-value pair to a table
that already contains that key may _shadow_ a previous entry. Subsequent get
or delete operations will refer to the newest entry; if it is deleted,
earlier shadowed entries become visible again.

The implementations avoid copying the keys and values. Later variable
bindings or destructive updates to terms may thus affect the stored values.

The internal representation of the hash tables is subject to change as
features are added. Writing hash tables to files and reading them back might
not work between different versions of this library, or even with the same
version once randomization is implemented. If you want to serialize a hash
table for I/O, you should convert it to a list first and then convert the
list back to a hash table.

The non-backtrackable hash tables are resized automatically when their load
exceeds a certain threshold.

## TODOs

The implementation of the pure hash tables is quite naive, and a bad choice
of the number of buckets leads to terrible performance. However, dynamic
resizing as for the non-backtrackable hash tables performs even worse
because hash tables with more buckets become more expensive to copy every
time an element is inserted. Some sort of hierarchical system is needed to
solve this.

All the predicates should check that their hash table arguments are indeed
instantiated to hash tables and throw appropriate instantiation errors.
Currently they may fail silently or instantiate uninstantiated arguments.

We might consider allowing other hashes than `term_hash/2`. In particular,
hashing with randomization should be useful. Randomized hash tables are
intended to protect against denial-of-service attacks by attackers who can
engineer a large number of collisions. The standard libraries of Python and
OCaml use randomized hashing, for example.

## Installation

This library requires SWI-Prolog; it was tested with SWI-Prolog 6.6.4 and
should work with newer versions.

    pack_install(hashtbl).

The pure part should be reasonably portable to other ISO Prolog systems.

## Contact

This library was written by Gergö Barany <gergo@tud.at>. It lives at
<https://github.com/gergo-/hashtbl>.

Comments, questions, bug reports, feature requests, and patches are welcome!

## Copying

This library is free software: you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This library is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License
for more details.

You should have received a copy of the GNU Lesser General Public License
along with this library (file LICENSE; see also LICENSE.GPL for the GNU
General Public License). If not, see <http://www.gnu.org/licenses/>.
