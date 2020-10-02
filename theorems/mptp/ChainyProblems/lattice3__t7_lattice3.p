%------------------------------------------------------------------------------
% File     : lattice3__t7_lattice3

% Syntax   : Number of formulae    :  675 (  81 unit)
%            Number of atoms       : 2935 ( 366 equality)
%            Maximal formula depth :   24 (   6 average)
%            Number of connectives : 2774 ( 514 ~  ;  13  |;1306  &)
%                                         ( 141 <=>; 800 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :  110 (   1 propositional; 0-3 arity)
%            Number of functors    :   75 (   3 constant; 0-6 arity)
%            Number of variables   : 1492 (   5 singleton;1370 !; 122 ?)
%            Maximal term depth    :    5 (   1 average)
%------------------------------------------------------------------------------
fof(abstractness_v1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => ( strict_meet_semilatt_str(A)
       => A = meet_semilatt_str_of(the_carrier(A),the_L_meet(A)) ) ) )).

fof(abstractness_v1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( strict_rel_str(A)
       => A = rel_str_of(the_carrier(A),the_InternalRel(A)) ) ) )).

fof(abstractness_v1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( strict_top_str(A)
       => A = top_str_of(the_carrier(A),the_topology(A)) ) ) )).

fof(abstractness_v1_struct_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ( strict_one_sorted(A)
       => A = one_sorted_str_of(the_carrier(A)) ) ) )).

fof(abstractness_v2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => ( strict_join_semilatt_str(A)
       => A = join_semilatt_str_of(the_carrier(A),the_L_join(A)) ) ) )).

fof(abstractness_v2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => ( strict_zero_str(A)
       => A = zero_str_of(the_carrier(A),the_zero(A)) ) ) )).

fof(abstractness_v3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( strict_latt_str(A)
       => A = latt_str_of(the_carrier(A),the_L_join(A),the_L_meet(A)) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(antisymmetry_r2_xboole_0,axiom,(
    ! [A,B] : 
      ( proper_subset(A,B)
     => ~ proper_subset(B,A) ) )).

fof(cc10_membered,axiom,(
    ! [A] : 
      ( v1_membered(A)
     => ! [B] : 
          ( element(B,A)
         => v1_xcmplx_0(B) ) ) )).

fof(cc11_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) )).

fof(cc12_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc13_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc14_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => ! [B] : 
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & natural(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) ) ) )).

fof(cc15_membered,axiom,(
    ! [A] : 
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v4_membered(A)
        & v5_membered(A) ) ) )).

fof(cc16_membered,axiom,(
    ! [A] : 
      ( v1_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => v1_membered(B) ) ) )).

fof(cc17_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B) ) ) ) )).

fof(cc18_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B) ) ) ) )).

fof(cc19_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B) ) ) ) )).

fof(cc1_arytm_3,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ! [B] : 
          ( element(B,A)
         => ( epsilon_transitive(B)
            & epsilon_connected(B)
            & ordinal(B) ) ) ) )).

fof(cc1_filter_0,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & v3_filter_0(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & distributive_lattstr(A)
          & modular_lattstr(A) ) ) ) )).

fof(cc1_finset_1,axiom,(
    ! [A] : 
      ( empty(A)
     => finite(A) ) )).

fof(cc1_finsub_1,axiom,(
    ! [A] : 
      ( preboolean(A)
     => ( cup_closed(A)
        & diff_closed(A) ) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc1_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & v1_partfun1(C,A,B) )
       => ( function(C)
          & quasi_total(C,A,B) ) ) ) )).

fof(cc1_lattice2,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & v1_lattice2(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & lower_bounded_semilattstr(A)
          & v3_filter_0(A) ) ) ) )).

fof(cc1_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A) ) ) ) )).

fof(cc1_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => v4_membered(A) ) )).

fof(cc1_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) )).

fof(cc1_partfun1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & symmetric(A)
        & transitive(A) )
     => ( relation(A)
        & reflexive(A) ) ) )).

fof(cc1_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => topological_space(B) ) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] : 
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) )).

fof(cc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( empty(B)
           => ( open_subset(B,A)
              & closed_subset(B,A) ) ) ) ) )).

fof(cc20_membered,axiom,(
    ! [A] : 
      ( v5_membered(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v5_membered(B) ) ) ) )).

fof(cc2_arytm_3,axiom,(
    ! [A] : 
      ( ( empty(A)
        & ordinal(A) )
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) )).

fof(cc2_finset_1,axiom,(
    ! [A] : 
      ( finite(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => finite(B) ) ) )).

fof(cc2_finsub_1,axiom,(
    ! [A] : 
      ( ( cup_closed(A)
        & diff_closed(A) )
     => preboolean(A) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(cc2_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & quasi_total(C,A,B)
          & bijective(C,A,B) )
       => ( function(C)
          & one_to_one(C)
          & quasi_total(C,A,B)
          & onto(C,A,B) ) ) ) )).

fof(cc2_lattice2,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & lower_bounded_semilattstr(A)
          & v3_filter_0(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & v1_lattice2(A) ) ) ) )).

fof(cc2_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A) )
       => ( ~ empty_carrier(A)
          & lattice(A) ) ) ) )).

fof(cc2_membered,axiom,(
    ! [A] : 
      ( v4_membered(A)
     => v3_membered(A) ) )).

fof(cc2_ordinal1,axiom,(
    ! [A] : 
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
     => ordinal(A) ) )).

fof(cc3_arytm_3,axiom,(
    ! [A] : 
      ( element(A,omega)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) )).

fof(cc3_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & one_to_one(C)
          & quasi_total(C,A,B)
          & onto(C,A,B) )
       => ( function(C)
          & quasi_total(C,A,B)
          & bijective(C,A,B) ) ) ) )).

fof(cc3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A) )
       => ( ~ empty_carrier(A)
          & bounded_lattstr(A) ) ) ) )).

fof(cc3_membered,axiom,(
    ! [A] : 
      ( v3_membered(A)
     => v2_membered(A) ) )).

fof(cc3_ordinal1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) )).

fof(cc4_arytm_3,axiom,(
    ! [A] : 
      ( element(A,positive_rationals)
     => ( ordinal(A)
       => ( epsilon_transitive(A)
          & epsilon_connected(A)
          & ordinal(A)
          & natural(A) ) ) ) )).

fof(cc4_funct_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ( ( function(B)
          & v1_partfun1(B,A,A)
          & reflexive(B)
          & quasi_total(B,A,A) )
       => ( function(B)
          & one_to_one(B)
          & quasi_total(B,A,A)
          & onto(B,A,A)
          & bijective(B,A,A) ) ) ) )).

fof(cc4_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & bounded_lattstr(A) )
       => ( ~ empty_carrier(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A) ) ) ) )).

fof(cc4_membered,axiom,(
    ! [A] : 
      ( v2_membered(A)
     => v1_membered(A) ) )).

fof(cc5_funct_2,axiom,(
    ! [A,B] : 
      ( ~ empty(B)
     => ! [C] : 
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & v1_partfun1(C,A,B)
              & quasi_total(C,A,B) ) ) ) ) )).

fof(cc5_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & boolean_lattstr(A) )
       => ( ~ empty_carrier(A)
          & distributive_lattstr(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A)
          & bounded_lattstr(A)
          & complemented_lattstr(A) ) ) ) )).

fof(cc6_funct_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ! [C] : 
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & ~ empty(C)
              & v1_partfun1(C,A,B)
              & quasi_total(C,A,B) ) ) ) ) )).

fof(cc6_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & distributive_lattstr(A)
          & bounded_lattstr(A)
          & complemented_lattstr(A) )
       => ( ~ empty_carrier(A)
          & boolean_lattstr(A) ) ) ) )).

fof(cc7_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & distributive_lattstr(A) )
       => ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_commutative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & lattice(A)
          & modular_lattstr(A) ) ) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(commutativity_k3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => join_commut(A,B,C) = join_commut(A,C,B) ) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(commutativity_k4_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => meet_commut(A,B,C) = meet_commut(A,C,B) ) )).

fof(commutativity_k4_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,C) = subset_union2(A,C,B) ) )).

fof(commutativity_k5_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_intersection2(A,B,C) = subset_intersection2(A,C,B) ) )).

fof(connectedness_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
        | ordinal_subset(B,A) ) ) )).

fof(d10_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( B = identity_relation(A)
      <=> ! [C,D] : 
            ( in(ordered_pair(C,D),B)
          <=> ( in(C,A)
              & C = D ) ) ) ) )).

fof(d10_xboole_0,axiom,(
    ! [A,B] : 
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) )).

fof(d11_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( relation(C)
         => ( C = relation_dom_restriction(A,B)
          <=> ! [D,E] : 
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(ordered_pair(D,E),A) ) ) ) ) ) )).

fof(d12_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B,C] : 
          ( C = relation_image(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ? [E] : 
                  ( in(E,relation_dom(A))
                  & in(E,B)
                  & D = apply(A,E) ) ) ) ) )).

fof(d12_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ! [C] : 
          ( relation(C)
         => ( C = relation_rng_restriction(A,B)
          <=> ! [D,E] : 
                ( in(ordered_pair(D,E),C)
              <=> ( in(E,A)
                  & in(ordered_pair(D,E),B) ) ) ) ) ) )).

fof(d12_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) ) ) )).

fof(d13_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B,C] : 
          ( C = relation_inverse_image(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ( in(D,relation_dom(A))
                & in(apply(A,D),B) ) ) ) ) )).

fof(d13_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ( ~ ( lower_bounded_semilattstr(A)
            & ! [B] : 
                ( element(B,the_carrier(A))
               => ~ ! [C] : 
                      ( element(C,the_carrier(A))
                     => ( meet(A,B,C) = B
                        & meet(A,C,B) = B ) ) ) )
        & ~ ( ~ ! [B] : 
                  ( element(B,the_carrier(A))
                 => ~ ! [C] : 
                        ( element(C,the_carrier(A))
                       => ( meet(A,B,C) = B
                          & meet(A,C,B) = B ) ) )
            & ~ lower_bounded_semilattstr(A) ) ) ) )).

fof(d13_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ( ~ ( C = topstr_closure(A,B)
                    & ~ ! [D] : 
                          ~ ( in(D,the_carrier(A))
                            & ~ ( ~ ( in(D,C)
                                    & ~ ! [E] : 
                                          ( element(E,powerset(the_carrier(A)))
                                         => ~ ( open_subset(E,A)
                                              & in(D,E)
                                              & disjoint(B,E) ) ) )
                                & ~ ( ! [E] : 
                                        ( element(E,powerset(the_carrier(A)))
                                       => ~ ( open_subset(E,A)
                                            & in(D,E)
                                            & disjoint(B,E) ) )
                                    & ~ in(D,C) ) ) ) )
                & ~ ( ! [D] : 
                        ~ ( in(D,the_carrier(A))
                          & ~ ( ~ ( in(D,C)
                                  & ~ ! [E] : 
                                        ( element(E,powerset(the_carrier(A)))
                                       => ~ ( open_subset(E,A)
                                            & in(D,E)
                                            & disjoint(B,E) ) ) )
                              & ~ ( ! [E] : 
                                      ( element(E,powerset(the_carrier(A)))
                                     => ~ ( open_subset(E,A)
                                          & in(D,E)
                                          & disjoint(B,E) ) )
                                  & ~ in(D,C) ) ) )
                    & C != topstr_closure(A,B) ) ) ) ) ) )).

fof(d13_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( C = relation_image(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ? [E] : 
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) ) ) ) ) )).

fof(d14_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( C = relation_inverse_image(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ? [E] : 
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) ) ) ) ) )).

fof(d14_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) )).

fof(d16_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ~ ( lower_bounded_semilattstr(A)
          & ~ ! [B] : 
                ( element(B,the_carrier(A))
               => ( ~ ( B = bottom_of_semilattstr(A)
                      & ~ ! [C] : 
                            ( element(C,the_carrier(A))
                           => ( meet(A,B,C) = B
                              & meet(A,C,B) = B ) ) )
                  & ~ ( ! [C] : 
                          ( element(C,the_carrier(A))
                         => ( meet(A,B,C) = B
                            & meet(A,C,B) = B ) )
                      & B != bottom_of_semilattstr(A) ) ) ) ) ) )).

fof(d16_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( transitive(A)
      <=> is_transitive_in(A,relation_field(A)) ) ) )).

fof(d1_binop_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B,C] : apply_binary(A,B,C) = apply(A,ordered_pair(B,C)) ) )).

fof(d1_connsp_2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ( ~ ( point_neighbourhood(C,A,B)
                    & ~ in(B,interior(A,C)) )
                & ~ ( in(B,interior(A,C))
                    & ~ point_neighbourhood(C,A,B) ) ) ) ) ) )).

fof(d1_enumset1,axiom,(
    ! [A,B,C,D] : 
      ( D = unordered_triple(A,B,C)
    <=> ! [E] : 
          ( in(E,D)
        <=> ~ ( E != A
              & E != B
              & E != C ) ) ) )).

fof(d1_finset_1,axiom,(
    ! [A] : 
      ( finite(A)
    <=> ? [B] : 
          ( relation(B)
          & function(B)
          & relation_rng(B) = A
          & in(relation_dom(B),omega) ) ) )).

fof(d1_funct_2,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => ( ( ( B = empty_set
           => A = empty_set )
         => ( quasi_total(C,A,B)
          <=> A = relation_dom_as_subset(A,B,C) ) )
        & ( B = empty_set
         => ( A = empty_set
            | ( quasi_total(C,A,B)
            <=> C = empty_set ) ) ) ) ) )).

fof(d1_lattice3,axiom,(
    ! [A,B] : 
      ( ( strict_latt_str(B)
        & latt_str(B) )
     => ( ~ ( B = boole_lattice(A)
            & ~ ( the_carrier(B) = powerset(A)
                & ! [C] : 
                    ( element(C,powerset(A))
                   => ! [D] : 
                        ( element(D,powerset(A))
                       => ( apply_binary(the_L_join(B),C,D) = subset_union2(A,C,D)
                          & apply_binary(the_L_meet(B),C,D) = subset_intersection2(A,C,D) ) ) ) ) )
        & ~ ( the_carrier(B) = powerset(A)
            & ! [C] : 
                ( element(C,powerset(A))
               => ! [D] : 
                    ( element(D,powerset(A))
                   => ( apply_binary(the_L_join(B),C,D) = subset_union2(A,C,D)
                      & apply_binary(the_L_meet(B),C,D) = subset_intersection2(A,C,D) ) ) )
            & B != boole_lattice(A) ) ) ) )).

fof(d1_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => join(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C) ) ) ) )).

fof(d1_mcart_1,axiom,(
    ! [A] : 
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] : 
          ( B = pair_first(A)
        <=> ! [C,D] : 
              ( A = ordered_pair(C,D)
             => B = C ) ) ) )).

fof(d1_ordinal1,axiom,(
    ! [A] : succ(A) = set_union2(A,singleton(A)) )).

fof(d1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ~ ( topological_space(A)
            & ~ ( in(the_carrier(A),the_topology(A))
                & ! [B] : 
                    ( element(B,powerset(powerset(the_carrier(A))))
                   => ~ ( subset(B,the_topology(A))
                        & ~ in(union_of_subsets(the_carrier(A),B),the_topology(A)) ) )
                & ! [B] : 
                    ( element(B,powerset(the_carrier(A)))
                   => ! [C] : 
                        ( element(C,powerset(the_carrier(A)))
                       => ~ ( in(B,the_topology(A))
                            & in(C,the_topology(A))
                            & ~ in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) ) ) ) ) )
        & ~ ( in(the_carrier(A),the_topology(A))
            & ! [B] : 
                ( element(B,powerset(powerset(the_carrier(A))))
               => ~ ( subset(B,the_topology(A))
                    & ~ in(union_of_subsets(the_carrier(A),B),the_topology(A)) ) )
            & ! [B] : 
                ( element(B,powerset(the_carrier(A)))
               => ! [C] : 
                    ( element(C,powerset(the_carrier(A)))
                   => ~ ( in(B,the_topology(A))
                        & in(C,the_topology(A))
                        & ~ in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) ) ) )
            & ~ topological_space(A) ) ) ) )).

fof(d1_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
    <=> ! [B] : 
          ~ ( in(B,A)
            & ! [C,D] : B != ordered_pair(C,D) ) ) )).

fof(d1_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_reflexive_in(A,B)
        <=> ! [C] : 
              ( in(C,B)
             => in(ordered_pair(C,C),A) ) ) ) )).

fof(d1_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
    <=> subset(C,cartesian_product2(A,B)) ) )).

fof(d1_setfam_1,axiom,(
    ! [A,B] : 
      ( ( A != empty_set
       => ( B = set_meet(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ! [D] : 
                  ( in(D,A)
                 => in(C,D) ) ) ) )
      & ( A = empty_set
       => ( B = set_meet(A)
        <=> B = empty_set ) ) ) )).

fof(d1_struct_0,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ( ~ ( empty_carrier(A)
            & ~ empty(the_carrier(A)) )
        & ~ ( empty(the_carrier(A))
            & ~ empty_carrier(A) ) ) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] : 
      ( B = singleton(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> C = A ) ) )).

fof(d1_tops_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => interior(A,B) = subset_complement(the_carrier(A),topstr_closure(A,subset_complement(the_carrier(A),B))) ) ) )).

fof(d1_tops_2,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( open_subsets(B,A)
                & ~ ! [C] : 
                      ( element(C,powerset(the_carrier(A)))
                     => ~ ( in(C,B)
                          & ~ open_subset(C,A) ) ) )
            & ~ ( ! [C] : 
                    ( element(C,powerset(the_carrier(A)))
                   => ~ ( in(C,B)
                        & ~ open_subset(C,A) ) )
                & ~ open_subsets(B,A) ) ) ) ) )).

fof(d1_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( C = fiber(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ( D != B
                & in(ordered_pair(D,B),A) ) ) ) ) )).

fof(d1_wellord2,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( B = inclusion_relation(A)
      <=> ( relation_field(B) = A
          & ! [C,D] : 
              ( ( in(C,A)
                & in(D,A) )
             => ( in(ordered_pair(C,D),B)
              <=> subset(C,D) ) ) ) ) ) )).

fof(d1_xboole_0,axiom,(
    ! [A] : 
      ( A = empty_set
    <=> ! [B] : ~ in(B,A) ) )).

fof(d1_zfmisc_1,axiom,(
    ! [A,B] : 
      ( B = powerset(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> subset(C,A) ) ) )).

fof(d2_compts_1,axiom,(
    ! [A] : 
      ( ~ ( centered(A)
          & ~ ( A != empty_set
              & ! [B] : 
                  ~ ( B != empty_set
                    & subset(B,A)
                    & finite(B)
                    & set_meet(B) = empty_set ) ) )
      & ~ ( A != empty_set
          & ! [B] : 
              ~ ( B != empty_set
                & subset(B,A)
                & finite(B)
                & set_meet(B) = empty_set )
          & ~ centered(A) ) ) )).

fof(d2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A)) ) )).

fof(d2_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => meet(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C) ) ) ) )).

fof(d2_mcart_1,axiom,(
    ! [A] : 
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] : 
          ( B = pair_second(A)
        <=> ! [C,D] : 
              ( A = ordered_pair(C,D)
             => B = D ) ) ) )).

fof(d2_ordinal1,axiom,(
    ! [A] : 
      ( epsilon_transitive(A)
    <=> ! [B] : 
          ( in(B,A)
         => subset(B,A) ) ) )).

fof(d2_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => empty_carrier_subset(A) = empty_set ) )).

fof(d2_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( A = B
          <=> ! [C,D] : 
                ( in(ordered_pair(C,D),A)
              <=> in(ordered_pair(C,D),B) ) ) ) ) )).

fof(d2_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
       => ( element(B,A)
        <=> in(B,A) ) )
      & ( empty(A)
       => ( element(B,A)
        <=> empty(B) ) ) ) )).

fof(d2_tarski,axiom,(
    ! [A,B,C] : 
      ( C = unordered_pair(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( D = A
            | D = B ) ) ) )).

fof(d2_tops_2,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( closed_subsets(B,A)
                & ~ ! [C] : 
                      ( element(C,powerset(the_carrier(A)))
                     => ~ ( in(C,B)
                          & ~ closed_subset(C,A) ) ) )
            & ~ ( ! [C] : 
                    ( element(C,powerset(the_carrier(A)))
                   => ~ ( in(C,B)
                        & ~ closed_subset(C,A) ) )
                & ~ closed_subsets(B,A) ) ) ) ) )).

fof(d2_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( well_founded_relation(A)
      <=> ! [B] : 
            ~ ( subset(B,relation_field(A))
              & B != empty_set
              & ! [C] : 
                  ~ ( in(C,B)
                    & disjoint(fiber(A,C),B) ) ) ) ) )).

fof(d2_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_union2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) )).

fof(d2_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( C = cartesian_product2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ? [E,F] : 
              ( in(E,A)
              & in(F,B)
              & D = ordered_pair(E,F) ) ) ) )).

fof(d3_compts_1,axiom,(
    ! [A] : 
      ( top_str(A)
     => ( ~ ( compact_top_space(A)
            & ~ ! [B] : 
                  ( element(B,powerset(powerset(the_carrier(A))))
                 => ~ ( is_a_cover_of_carrier(A,B)
                      & open_subsets(B,A)
                      & ! [C] : 
                          ( element(C,powerset(powerset(the_carrier(A))))
                         => ~ ( subset(C,B)
                              & is_a_cover_of_carrier(A,C)
                              & finite(C) ) ) ) ) )
        & ~ ( ! [B] : 
                ( element(B,powerset(powerset(the_carrier(A))))
               => ~ ( is_a_cover_of_carrier(A,B)
                    & open_subsets(B,A)
                    & ! [C] : 
                        ( element(C,powerset(powerset(the_carrier(A))))
                       => ~ ( subset(C,B)
                            & is_a_cover_of_carrier(A,C)
                            & finite(C) ) ) ) )
            & ~ compact_top_space(A) ) ) ) )).

fof(d3_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => cast_to_el_of_LattPOSet(A,B) = B ) ) )).

fof(d3_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( below(A,B,C)
                    & join(A,B,C) != C )
                & ~ ( join(A,B,C) = C
                    & ~ below(A,B,C) ) ) ) ) ) )).

fof(d3_ordinal1,axiom,(
    ! [A] : 
      ( epsilon_connected(A)
    <=> ! [B,C] : 
          ~ ( in(B,A)
            & in(C,A)
            & ~ in(B,C)
            & B != C
            & ~ in(C,B) ) ) )).

fof(d3_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => cast_as_carrier_subset(A) = the_carrier(A) ) )).

fof(d3_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( subset(A,B)
          <=> ! [C,D] : 
                ( in(ordered_pair(C,D),A)
               => in(ordered_pair(C,D),B) ) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d3_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_well_founded_in(A,B)
        <=> ! [C] : 
              ~ ( subset(C,B)
                & C != empty_set
                & ! [D] : 
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) ) ) ) ) )).

fof(d3_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_intersection2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) )).

fof(d4_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B,C] : 
          ( ( in(B,relation_dom(A))
           => ( C = apply(A,B)
            <=> in(ordered_pair(B,C),A) ) )
          & ( ~ in(B,relation_dom(A))
           => ( C = apply(A,B)
            <=> C = empty_set ) ) ) ) )).

fof(d4_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
    <=> ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) )).

fof(d4_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_dom(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) )).

fof(d4_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] : 
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A) )
             => C = D ) ) ) )).

fof(d4_subset_1,axiom,(
    ! [A] : cast_to_subset(A) = A )).

fof(d4_tarski,axiom,(
    ! [A,B] : 
      ( B = union(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> ? [D] : 
              ( in(C,D)
              & in(D,A) ) ) ) )).

fof(d4_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( well_ordering(A)
      <=> ( reflexive(A)
          & transitive(A)
          & antisymmetric(A)
          & connected(A)
          & well_founded_relation(A) ) ) ) )).

fof(d4_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
    <=> ? [C] : 
          ( relation(C)
          & function(C)
          & one_to_one(C)
          & relation_dom(C) = A
          & relation_rng(C) = B ) ) )).

fof(d4_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_difference(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) )).

fof(d5_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ! [B] : 
          ( B = relation_rng(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : 
                  ( in(D,relation_dom(A))
                  & C = apply(A,D) ) ) ) ) )).

fof(d5_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ~ ( transitive_relstr(A)
            & ~ is_transitive_in(the_InternalRel(A),the_carrier(A)) )
        & ~ ( is_transitive_in(the_InternalRel(A),the_carrier(A))
            & ~ transitive_relstr(A) ) ) ) )).

fof(d5_ordinal2,axiom,(
    ! [A] : 
      ( A = omega
    <=> ( in(empty_set,A)
        & being_limit_ordinal(A)
        & ordinal(A)
        & ! [B] : 
            ( ordinal(B)
           => ( ( in(empty_set,B)
                & being_limit_ordinal(B) )
             => subset(A,B) ) ) ) ) )).

fof(d5_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( open_subset(B,A)
                & ~ in(B,the_topology(A)) )
            & ~ ( in(B,the_topology(A))
                & ~ open_subset(B,A) ) ) ) ) )).

fof(d5_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_rng(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) ) ) ) )).

fof(d5_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => subset_complement(A,B) = set_difference(A,B) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d5_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( well_orders(A,B)
        <=> ( is_reflexive_in(A,B)
            & is_transitive_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_connected_in(A,B)
            & is_well_founded_in(A,B) ) ) ) )).

fof(d6_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ( ~ ( antisymmetric_relstr(A)
            & ~ is_antisymmetric_in(the_InternalRel(A),the_carrier(A)) )
        & ~ ( is_antisymmetric_in(the_InternalRel(A),the_carrier(A))
            & ~ antisymmetric_relstr(A) ) ) ) )).

fof(d6_ordinal1,axiom,(
    ! [A] : 
      ( being_limit_ordinal(A)
    <=> A = union(A) ) )).

fof(d6_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( closed_subset(B,A)
                & ~ open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A) )
            & ~ ( open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A)
                & ~ closed_subset(B,A) ) ) ) ) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(d6_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_connected_in(A,B)
        <=> ! [C,D] : 
              ~ ( in(C,B)
                & in(D,B)
                & C != D
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A) ) ) ) )).

fof(d6_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) )).

fof(d7_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( B = relation_inverse(A)
          <=> ! [C,D] : 
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(D,C),A) ) ) ) ) )).

fof(d7_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
              <=> ( relation_dom(C) = relation_field(A)
                  & relation_rng(C) = relation_field(B)
                  & one_to_one(C)
                  & ! [D,E] : 
                      ( in(ordered_pair(D,E),A)
                    <=> ( in(D,relation_field(A))
                        & in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B) ) ) ) ) ) ) ) )).

fof(d7_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) )).

fof(d8_filter_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => relation_of_lattice(A) = a_1_0_filter_1(A) ) )).

fof(d8_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
      <=> ! [B,C] : 
            ( ( in(B,relation_dom(A))
              & in(C,relation_dom(A))
              & apply(A,B) = apply(A,C) )
           => B = C ) ) ) )).

fof(d8_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ( ~ ( meet_absorbing(A)
            & ~ ! [B] : 
                  ( element(B,the_carrier(A))
                 => ! [C] : 
                      ( element(C,the_carrier(A))
                     => join(A,meet(A,B,C),C) = C ) ) )
        & ~ ( ! [B] : 
                ( element(B,the_carrier(A))
               => ! [C] : 
                    ( element(C,the_carrier(A))
                   => join(A,meet(A,B,C),C) = C ) )
            & ~ meet_absorbing(A) ) ) ) )).

fof(d8_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( is_a_cover_of_carrier(A,B)
                & cast_as_carrier_subset(A) != union_of_subsets(the_carrier(A),B) )
            & ~ ( cast_as_carrier_subset(A) = union_of_subsets(the_carrier(A),B)
                & ~ is_a_cover_of_carrier(A,B) ) ) ) ) )).

fof(d8_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( relation(C)
             => ( C = relation_composition(A,B)
              <=> ! [D,E] : 
                    ( in(ordered_pair(D,E),C)
                  <=> ? [F] : 
                        ( in(ordered_pair(D,F),A)
                        & in(ordered_pair(F,E),B) ) ) ) ) ) ) )).

fof(d8_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] : 
              ( ( in(C,B)
                & in(D,B)
                & in(E,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,E),A) )
             => in(ordered_pair(C,E),A) ) ) ) )).

fof(d8_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ! [C] : 
          ( element(C,powerset(powerset(A)))
         => ( C = complements_of_subsets(A,B)
          <=> ! [D] : 
                ( element(D,powerset(A))
               => ( in(D,C)
                <=> in(subset_complement(A,D),B) ) ) ) ) ) )).

fof(d8_xboole_0,axiom,(
    ! [A,B] : 
      ( proper_subset(A,B)
    <=> ( subset(A,B)
        & A != B ) ) )).

fof(d9_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => function_inverse(A) = relation_inverse(A) ) ) )).

fof(d9_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( related(A,B,C)
                    & ~ in(ordered_pair(B,C),the_InternalRel(A)) )
                & ~ ( in(ordered_pair(B,C),the_InternalRel(A))
                    & ~ related(A,B,C) ) ) ) ) ) )).

fof(d9_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( reflexive(A)
      <=> is_reflexive_in(A,relation_field(A)) ) ) )).

fof(dt_g1_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( strict_meet_semilatt_str(meet_semilatt_str_of(A,B))
        & meet_semilatt_str(meet_semilatt_str_of(A,B)) ) ) )).

fof(dt_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ( strict_rel_str(rel_str_of(A,B))
        & rel_str(rel_str_of(A,B)) ) ) )).

fof(dt_g1_pre_topc,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( strict_top_str(top_str_of(A,B))
        & top_str(top_str_of(A,B)) ) ) )).

fof(dt_g1_struct_0,axiom,(
    ! [A] : 
      ( strict_one_sorted(one_sorted_str_of(A))
      & one_sorted_str(one_sorted_str_of(A)) ) )).

fof(dt_g2_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( strict_join_semilatt_str(join_semilatt_str_of(A,B))
        & join_semilatt_str(join_semilatt_str_of(A,B)) ) ) )).

fof(dt_g2_struct_0,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ( strict_zero_str(zero_str_of(A,B))
        & zero_str(zero_str_of(A,B)) ) ) )).

fof(dt_g3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ( strict_latt_str(latt_str_of(A,B,C))
        & latt_str(latt_str_of(A,B,C)) ) ) )).

fof(dt_k10_filter_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B)
        & element(C,the_carrier(A))
        & element(D,the_carrier(B)) )
     => element(k10_filter_1(A,B,C,D),the_carrier(k8_filter_1(A,B))) ) )).

fof(dt_k10_relat_1,axiom,(
    $true )).

fof(dt_k1_binop_1,axiom,(
    $true )).

fof(dt_k1_domain_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & element(C,A)
        & element(D,B) )
     => element(ordered_pair_as_product_element(A,B,C,D),cartesian_product2(A,B)) ) )).

fof(dt_k1_enumset1,axiom,(
    $true )).

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_lattice3,axiom,(
    ! [A] : 
      ( strict_latt_str(boole_lattice(A))
      & latt_str(boole_lattice(A)) ) )).

fof(dt_k1_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(join(A,B,C),the_carrier(A)) ) )).

fof(dt_k1_mcart_1,axiom,(
    $true )).

fof(dt_k1_ordinal1,axiom,(
    $true )).

fof(dt_k1_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => element(empty_carrier_subset(A),powerset(the_carrier(A))) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_setfam_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_tops_1,axiom,(
    ! [A,B] : 
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(interior(A,B),powerset(the_carrier(A))) ) )).

fof(dt_k1_wellord1,axiom,(
    $true )).

fof(dt_k1_wellord2,axiom,(
    ! [A] : relation(inclusion_relation(A)) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_binop_1,axiom,(
    ! [A,B,C,D,E,F] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(D)
        & quasi_total(D,cartesian_product2(A,B),C)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B) )
     => element(apply_binary_as_element(A,B,C,D,E,F),C) ) )).

fof(dt_k2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(function_inverse(A))
        & function(function_inverse(A)) ) ) )).

fof(dt_k2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( reflexive(k2_lattice3(A))
        & antisymmetric(k2_lattice3(A))
        & transitive(k2_lattice3(A))
        & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A)) ) ) )).

fof(dt_k2_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(meet(A,B,C),the_carrier(A)) ) )).

fof(dt_k2_mcart_1,axiom,(
    $true )).

fof(dt_k2_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_subset_1,axiom,(
    ! [A] : element(cast_to_subset(A),powerset(A)) )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_wellord1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_restriction(A,B)) ) )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & rel_str(poset_of_lattice(A)) ) ) )).

fof(dt_k3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(join_commut(A,B,C),the_carrier(A)) ) )).

fof(dt_k3_relat_1,axiom,(
    $true )).

fof(dt_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k4_lattice3,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(A)) )
     => element(cast_to_el_of_LattPOSet(A,B),the_carrier(poset_of_lattice(A))) ) )).

fof(dt_k4_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(meet_commut(A,B,C),the_carrier(A)) ) )).

fof(dt_k4_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation(relation_inverse(A)) ) )).

fof(dt_k4_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => element(relation_dom_as_subset(A,B,C),powerset(A)) ) )).

fof(dt_k4_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_union2(A,B,C),powerset(A)) ) )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(dt_k5_lattices,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => element(bottom_of_semilattstr(A),the_carrier(A)) ) )).

fof(dt_k5_ordinal2,axiom,(
    $true )).

fof(dt_k5_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(relation_composition(A,B)) ) )).

fof(dt_k5_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => element(relation_rng_as_subset(A,B,C),powerset(B)) ) )).

fof(dt_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) )).

fof(dt_k5_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_intersection2(A,B,C),powerset(A)) ) )).

fof(dt_k6_arytm_3,axiom,(
    $true )).

fof(dt_k6_pre_topc,axiom,(
    ! [A,B] : 
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(topstr_closure(A,B),powerset(the_carrier(A))) ) )).

fof(dt_k6_relat_1,axiom,(
    ! [A] : relation(identity_relation(A)) )).

fof(dt_k6_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) )).

fof(dt_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) )).

fof(dt_k7_relat_1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) )).

fof(dt_k7_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) )).

fof(dt_k8_filter_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & ~ empty_carrier(B)
        & latt_str(B) )
     => ( strict_latt_str(k8_filter_1(A,B))
        & latt_str(k8_filter_1(A,B)) ) ) )).

fof(dt_k8_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) )).

fof(dt_k9_filter_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => relation(relation_of_lattice(A)) ) )).

fof(dt_k9_relat_1,axiom,(
    $true )).

fof(dt_l1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l1_struct_0,axiom,(
    $true )).

fof(dt_l2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => one_sorted_str(A) ) )).

fof(dt_l3_lattices,axiom,(
    ! [A] : 
      ( latt_str(A)
     => ( meet_semilatt_str(A)
        & join_semilatt_str(A) ) ) )).

fof(dt_m1_connsp_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & element(B,the_carrier(A)) )
     => ! [C] : 
          ( point_neighbourhood(C,A,B)
         => element(C,powerset(the_carrier(A))) ) ) )).

fof(dt_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( m1_pre_topc(B,A)
         => top_str(B) ) ) )).

fof(dt_m1_relset_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(dt_u1_lattices,axiom,(
    ! [A] : 
      ( meet_semilatt_str(A)
     => ( function(the_L_meet(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(dt_u1_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) )).

fof(dt_u1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) )).

fof(dt_u1_struct_0,axiom,(
    $true )).

fof(dt_u2_lattices,axiom,(
    ! [A] : 
      ( join_semilatt_str(A)
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(dt_u2_struct_0,axiom,(
    ! [A] : 
      ( zero_str(A)
     => element(the_zero(A),the_carrier(A)) ) )).

fof(existence_l1_lattices,axiom,(
    ? [A] : meet_semilatt_str(A) )).

fof(existence_l1_orders_2,axiom,(
    ? [A] : rel_str(A) )).

fof(existence_l1_pre_topc,axiom,(
    ? [A] : top_str(A) )).

fof(existence_l1_struct_0,axiom,(
    ? [A] : one_sorted_str(A) )).

fof(existence_l2_lattices,axiom,(
    ? [A] : join_semilatt_str(A) )).

fof(existence_l2_struct_0,axiom,(
    ? [A] : zero_str(A) )).

fof(existence_l3_lattices,axiom,(
    ? [A] : latt_str(A) )).

fof(existence_m1_connsp_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & element(B,the_carrier(A)) )
     => ? [C] : point_neighbourhood(C,A,B) ) )).

fof(existence_m1_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : m1_pre_topc(B,A) ) )).

fof(existence_m1_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2(C,A,B) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc10_finset_1,axiom,(
    ! [A,B] : 
      ( finite(B)
     => finite(set_intersection2(A,B)) ) )).

fof(fc10_relat_1,axiom,(
    ! [A,B] : 
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(B,A))
        & relation(relation_composition(B,A)) ) ) )).

fof(fc11_finset_1,axiom,(
    ! [A,B] : 
      ( finite(A)
     => finite(set_intersection2(A,B)) ) )).

fof(fc11_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_inverse(A))
        & relation(relation_inverse(A)) ) ) )).

fof(fc12_finset_1,axiom,(
    ! [A,B] : 
      ( finite(A)
     => finite(set_difference(A,B)) ) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc13_finset_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A)
        & finite(B) )
     => finite(relation_image(A,B)) ) )).

fof(fc13_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation(relation_dom_restriction(A,B))
        & relation_empty_yielding(relation_dom_restriction(A,B)) ) ) )).

fof(fc1_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(singleton(A))
      & finite(singleton(A)) ) )).

fof(fc1_finsub_1,axiom,(
    ! [A] : 
      ( ~ empty(powerset(A))
      & cup_closed(powerset(A))
      & diff_closed(powerset(A))
      & preboolean(powerset(A)) ) )).

fof(fc1_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A)
        & relation(B)
        & function(B) )
     => ( relation(relation_composition(A,B))
        & function(relation_composition(A,B)) ) ) )).

fof(fc1_lattice3,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) )).

fof(fc1_lattices,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(join_semilatt_str_of(A,B))
        & strict_join_semilatt_str(join_semilatt_str_of(A,B)) ) ) )).

fof(fc1_orders_2,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation_of2(B,A,A) )
     => ( ~ empty_carrier(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) ) ) )).

fof(fc1_ordinal1,axiom,(
    ! [A] : ~ empty(succ(A)) )).

fof(fc1_ordinal2,axiom,
    ( epsilon_transitive(omega)
    & epsilon_connected(omega)
    & ordinal(omega)
    & ~ empty(omega) )).

fof(fc1_pre_topc,axiom,(
    ! [A] : 
      ( one_sorted_str(A)
     => ( empty(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A))
        & v2_membered(empty_carrier_subset(A))
        & v3_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A)) ) ) )).

fof(fc1_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_intersection2(A,B)) ) )).

fof(fc1_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(fc27_membered,axiom,(
    ! [A,B] : 
      ( v1_membered(A)
     => v1_membered(set_intersection2(A,B)) ) )).

fof(fc28_membered,axiom,(
    ! [A,B] : 
      ( v1_membered(A)
     => v1_membered(set_intersection2(B,A)) ) )).

fof(fc29_membered,axiom,(
    ! [A,B] : 
      ( v2_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) ) ) )).

fof(fc2_arytm_3,axiom,(
    ! [A] : 
      ( ( ordinal(A)
        & natural(A) )
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A))
        & natural(succ(A)) ) ) )).

fof(fc2_funct_1,axiom,(
    ! [A] : 
      ( relation(identity_relation(A))
      & function(identity_relation(A)) ) )).

fof(fc2_lattice2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A) )
     => ( relation(the_L_join(A))
        & function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_join(A),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(fc2_lattice3,axiom,(
    ! [A] : 
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A)) ) )).

fof(fc2_lattices,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(meet_semilatt_str_of(A,B))
        & strict_meet_semilatt_str(meet_semilatt_str_of(A,B)) ) ) )).

fof(fc2_orders_2,axiom,(
    ! [A] : 
      ( ( reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & rel_str(A) )
     => ( relation(the_InternalRel(A))
        & reflexive(the_InternalRel(A))
        & antisymmetric(the_InternalRel(A))
        & transitive(the_InternalRel(A))
        & v1_partfun1(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ) )).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) )).

fof(fc2_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) )).

fof(fc2_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_union2(A,B)) ) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ empty(singleton(A)) )).

fof(fc2_tops_1,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => closed_subset(topstr_closure(A,B),A) ) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc30_membered,axiom,(
    ! [A,B] : 
      ( v2_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) ) ) )).

fof(fc31_membered,axiom,(
    ! [A,B] : 
      ( v3_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B)) ) ) )).

fof(fc32_membered,axiom,(
    ! [A,B] : 
      ( v3_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) ) ) )).

fof(fc33_membered,axiom,(
    ! [A,B] : 
      ( v4_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B)) ) ) )).

fof(fc34_membered,axiom,(
    ! [A,B] : 
      ( v4_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A)) ) ) )).

fof(fc35_membered,axiom,(
    ! [A,B] : 
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B)) ) ) )).

fof(fc36_membered,axiom,(
    ! [A,B] : 
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A)) ) ) )).

fof(fc37_membered,axiom,(
    ! [A,B] : 
      ( v1_membered(A)
     => v1_membered(set_difference(A,B)) ) )).

fof(fc38_membered,axiom,(
    ! [A,B] : 
      ( v2_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) ) ) )).

fof(fc39_membered,axiom,(
    ! [A,B] : 
      ( v3_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B)) ) ) )).

fof(fc3_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & one_to_one(A) )
     => ( relation(relation_inverse(A))
        & function(relation_inverse(A)) ) ) )).

fof(fc3_lattice2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & join_associative(A)
        & join_semilatt_str(A) )
     => ( relation(the_L_join(A))
        & function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_join(A),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(fc3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ( ~ empty_carrier(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) ) ) )).

fof(fc3_orders_2,axiom,(
    ! [A,B] : 
      ( ( reflexive(B)
        & antisymmetric(B)
        & transitive(B)
        & v1_partfun1(B,A,A)
        & relation_of2(B,A,A) )
     => ( strict_rel_str(rel_str_of(A,B))
        & reflexive_relstr(rel_str_of(A,B))
        & transitive_relstr(rel_str_of(A,B))
        & antisymmetric_relstr(rel_str_of(A,B)) ) ) )).

fof(fc3_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A)) ) ) )).

fof(fc3_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_difference(A,B)) ) )).

fof(fc3_subset_1,axiom,(
    ! [A,B] : ~ empty(unordered_pair(A,B)) )).

fof(fc3_tops_1,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & closed_subset(B,A)
        & element(B,powerset(the_carrier(A))) )
     => open_subset(subset_complement(the_carrier(A),B),A) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(fc40_membered,axiom,(
    ! [A,B] : 
      ( v4_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B)) ) ) )).

fof(fc41_membered,axiom,(
    ! [A,B] : 
      ( v5_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B)) ) ) )).

fof(fc4_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) )).

fof(fc4_lattice2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_semilatt_str(A) )
     => ( relation(the_L_meet(A))
        & function(the_L_meet(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(fc4_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( ~ empty_carrier(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A)) ) ) )).

fof(fc4_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( epsilon_transitive(union(A))
        & epsilon_connected(union(A))
        & ordinal(union(A)) ) ) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc4_subset_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) )).

fof(fc4_tops_1,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & open_subset(B,A)
        & element(B,powerset(the_carrier(A))) )
     => closed_subset(subset_complement(the_carrier(A),B),A) ) )).

fof(fc5_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) ) ) )).

fof(fc5_lattice2,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_associative(A)
        & meet_semilatt_str(A) )
     => ( relation(the_L_meet(A))
        & function(the_L_meet(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) )).

fof(fc5_ordinal1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & transfinite_sequence(A) )
     => ( epsilon_transitive(relation_dom(A))
        & epsilon_connected(relation_dom(A))
        & ordinal(relation_dom(A)) ) ) )).

fof(fc5_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => closed_subset(cast_as_carrier_subset(A),A) ) )).

fof(fc5_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) )).

fof(fc6_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & relation_non_empty(A)
        & function(A) )
     => with_non_empty_elements(relation_rng(A)) ) )).

fof(fc6_membered,axiom,
    ( empty(empty_set)
    & v1_membered(empty_set)
    & v2_membered(empty_set)
    & v3_membered(empty_set)
    & v4_membered(empty_set)
    & v5_membered(empty_set) )).

fof(fc6_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) )).

fof(fc6_tops_1,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => open_subset(interior(A,B),A) ) )).

fof(fc7_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) )).

fof(fc8_arytm_3,axiom,(
    ~ empty(positive_rationals) )).

fof(fc8_funcop_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A)
        & function_yielding(A)
        & relation(B)
        & function(B) )
     => ( relation(relation_composition(B,A))
        & function(relation_composition(B,A))
        & function_yielding(relation_composition(B,A)) ) ) )).

fof(fc8_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) )).

fof(fc9_finset_1,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => finite(set_union2(A,B)) ) )).

fof(fc9_relat_1,axiom,(
    ! [A,B] : 
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) ) ) )).

fof(fraenkel_a_1_0_filter_1,axiom,(
    ! [A,B] : 
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ( in(A,a_1_0_filter_1(B))
      <=> ? [C,D] : 
            ( element(C,the_carrier(B))
            & element(D,the_carrier(B))
            & A = ordered_pair_as_product_element(the_carrier(B),the_carrier(B),C,D)
            & below_refl(B,C,D) ) ) ) )).

fof(free_g1_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ! [C,D] : 
          ( meet_semilatt_str_of(A,B) = meet_semilatt_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_orders_2,axiom,(
    ! [A,B] : 
      ( relation_of2(B,A,A)
     => ! [C,D] : 
          ( rel_str_of(A,B) = rel_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_pre_topc,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ! [C,D] : 
          ( top_str_of(A,B) = top_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g1_struct_0,axiom,(
    ! [A,B] : 
      ( one_sorted_str_of(A) = one_sorted_str_of(B)
     => A = B ) )).

fof(free_g2_lattices,axiom,(
    ! [A,B] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A) )
     => ! [C,D] : 
          ( join_semilatt_str_of(A,B) = join_semilatt_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g2_struct_0,axiom,(
    ! [A,B] : 
      ( element(B,A)
     => ! [C,D] : 
          ( zero_str_of(A,B) = zero_str_of(C,D)
         => ( A = C
            & B = D ) ) ) )).

fof(free_g3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) )
     => ! [D,E,F] : 
          ( latt_str_of(A,B,C) = latt_str_of(D,E,F)
         => ( A = D
            & B = E
            & C = F ) ) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(idempotence_k4_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,B) = B ) )).

fof(idempotence_k5_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_intersection2(A,B,B) = B ) )).

fof(involutiveness_k3_subset_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) )).

fof(involutiveness_k4_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_inverse(relation_inverse(A)) = A ) )).

fof(involutiveness_k7_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) )).

fof(irreflexivity_r2_xboole_0,axiom,(
    ! [A,B] : ~ proper_subset(A,A) )).

fof(l1_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( reflexive(A)
      <=> ! [B] : 
            ( in(B,relation_field(A))
           => in(ordered_pair(B,B),A) ) ) ) )).

fof(l1_zfmisc_1,lemma,(
    ! [A] : singleton(A) != empty_set )).

fof(l23_zfmisc_1,lemma,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).

fof(l25_zfmisc_1,lemma,(
    ! [A,B] : 
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).

fof(l28_zfmisc_1,lemma,(
    ! [A,B] : 
      ( ~ in(A,B)
     => disjoint(singleton(A),B) ) )).

fof(l29_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) )).

fof(l2_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( transitive(A)
      <=> ! [B,C,D] : 
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) ) ) ) )).

fof(l2_zfmisc_1,lemma,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(l30_wellord2,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ~ ( well_ordering(B)
          & equipotent(A,relation_field(B))
          & ! [C] : 
              ( relation(C)
             => ~ well_orders(C,A) ) ) ) )).

fof(l32_xboole_1,lemma,(
    ! [A,B] : 
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) )).

fof(l3_subset_1,lemma,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => ! [C] : 
          ( in(C,B)
         => in(C,A) ) ) )).

fof(l3_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( antisymmetric(A)
      <=> ! [B,C] : 
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,B),A) )
           => B = C ) ) ) )).

fof(l3_zfmisc_1,lemma,(
    ! [A,B,C] : 
      ( subset(A,B)
     => ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) ) ) )).

fof(l40_tops_1,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( in(C,subset_complement(the_carrier(A),B))
                    & in(C,B) )
                & ~ ( ~ in(C,B)
                    & ~ in(C,subset_complement(the_carrier(A),B)) ) ) ) ) ) )).

fof(l4_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( connected(A)
      <=> ! [B,C] : 
            ~ ( in(B,relation_field(A))
              & in(C,relation_field(A))
              & B != C
              & ~ in(ordered_pair(B,C),A)
              & ~ in(ordered_pair(C,B),A) ) ) ) )).

fof(l4_zfmisc_1,lemma,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(l50_zfmisc_1,lemma,(
    ! [A,B] : 
      ( in(A,B)
     => subset(A,union(B)) ) )).

fof(l55_zfmisc_1,lemma,(
    ! [A,B,C,D] : 
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) )).

fof(l71_subset_1,lemma,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
         => in(C,B) )
     => element(A,powerset(B)) ) )).

fof(l82_funct_1,lemma,(
    ! [A,B,C] : 
      ( ( relation(C)
        & function(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) )).

fof(rc10_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & distributive_lattstr(A)
      & modular_lattstr(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A) ) )).

fof(rc11_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A) ) )).

fof(rc12_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & complemented_lattstr(A) ) )).

fof(rc13_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & distributive_lattstr(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & complemented_lattstr(A)
      & boolean_lattstr(A) ) )).

fof(rc1_arytm_3,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & natural(A) ) )).

fof(rc1_filter_0,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & v3_filter_0(A) ) )).

fof(rc1_finset_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & finite(A) ) )).

fof(rc1_finsub_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & cup_closed(A)
      & cap_closed(A)
      & diff_closed(A)
      & preboolean(A) ) )).

fof(rc1_funcop_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & function_yielding(A) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_funct_2,axiom,(
    ! [A,B] : 
    ? [C] : 
      ( relation_of2(C,A,B)
      & relation(C)
      & function(C)
      & quasi_total(C,A,B) ) )).

fof(rc1_lattice2,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & v1_lattice2(A) ) )).

fof(rc1_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & strict_meet_semilatt_str(A) ) )).

fof(rc1_membered,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & v1_membered(A)
      & v2_membered(A)
      & v3_membered(A)
      & v4_membered(A)
      & v5_membered(A) ) )).

fof(rc1_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & strict_rel_str(A) ) )).

fof(rc1_ordinal1,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc1_ordinal2,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A) ) )).

fof(rc1_partfun1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A) ) )).

fof(rc1_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & strict_top_str(A) ) )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc1_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & strict_one_sorted(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc1_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_arytm_3,axiom,(
    ? [A] : 
      ( element(A,positive_rationals)
      & ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc2_finset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B)
      & relation(B)
      & function(B)
      & one_to_one(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & ordinal(B)
      & natural(B)
      & finite(B) ) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_funct_2,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation_of2(B,A,A)
      & relation(B)
      & function(B)
      & one_to_one(B)
      & quasi_total(B,A,A)
      & onto(B,A,A)
      & bijective(B,A,A) ) )).

fof(rc2_lattice2,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & lower_bounded_semilattstr(A)
      & v3_filter_0(A)
      & v1_lattice2(A) ) )).

fof(rc2_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & strict_join_semilatt_str(A) ) )).

fof(rc2_orders_2,axiom,(
    ? [A] : 
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A) ) )).

fof(rc2_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc2_ordinal2,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & transfinite_sequence(A)
      & ordinal_yielding(A) ) )).

fof(rc2_partfun1,axiom,(
    ! [A,B] : 
    ? [C] : 
      ( relation_of2(C,A,B)
      & relation(C)
      & function(C) ) )).

fof(rc2_pre_topc,axiom,(
    ? [A] : 
      ( top_str(A)
      & ~ empty_carrier(A)
      & strict_top_str(A)
      & topological_space(A) ) )).

fof(rc2_relat_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A) ) )).

fof(rc2_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & strict_zero_str(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_tops_1,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A)
          & closed_subset(B,A) ) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_arytm_3,axiom,(
    ? [A] : 
      ( element(A,positive_rationals)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & natural(A) ) )).

fof(rc3_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc3_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & strict_latt_str(A) ) )).

fof(rc3_orders_2,axiom,(
    ! [A] : 
      ( rel_str(A)
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & strongly_connected_rel_subset(B,A) ) ) )).

fof(rc3_ordinal1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc3_partfun1,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation_of2(B,A,A)
      & relation(B)
      & reflexive(B)
      & symmetric(B)
      & antisymmetric(B)
      & transitive(B)
      & v1_partfun1(B,A,A) ) )).

fof(rc3_pre_topc,axiom,(
    ! [A] : 
      ( top_str(A)
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B) ) ) )).

fof(rc3_relat_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A) ) )).

fof(rc3_struct_0,axiom,(
    ? [A] : 
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc3_tops_1,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & open_subset(B,A)
          & closed_subset(B,A) ) ) )).

fof(rc4_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc4_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_join_semilatt_str(A) ) )).

fof(rc4_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & transfinite_sequence(A) ) )).

fof(rc4_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & ~ empty_carrier(B)
          & strict_top_str(B) ) ) )).

fof(rc4_struct_0,axiom,(
    ? [A] : 
      ( zero_str(A)
      & ~ empty_carrier(A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(rc5_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_meet_semilatt_str(A) ) )).

fof(rc5_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( m1_pre_topc(B,A)
          & strict_top_str(B)
          & topological_space(B) ) ) )).

fof(rc5_struct_0,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B) ) ) )).

fof(rc6_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A) ) )).

fof(rc6_pre_topc,axiom,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) )).

fof(rc7_lattices,axiom,(
    ? [A] : 
      ( join_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_join_semilatt_str(A)
      & join_commutative(A)
      & join_associative(A) ) )).

fof(rc7_pre_topc,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ? [B] : 
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) )).

fof(rc8_lattices,axiom,(
    ? [A] : 
      ( meet_semilatt_str(A)
      & ~ empty_carrier(A)
      & strict_meet_semilatt_str(A)
      & meet_commutative(A)
      & meet_associative(A) ) )).

fof(rc9_lattices,axiom,(
    ? [A] : 
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A) ) )).

fof(redefinition_k10_filter_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B)
        & element(C,the_carrier(A))
        & element(D,the_carrier(B)) )
     => k10_filter_1(A,B,C,D) = ordered_pair(C,D) ) )).

fof(redefinition_k1_domain_1,axiom,(
    ! [A,B,C,D] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & element(C,A)
        & element(D,B) )
     => ordered_pair_as_product_element(A,B,C,D) = ordered_pair(C,D) ) )).

fof(redefinition_k2_binop_1,axiom,(
    ! [A,B,C,D,E,F] : 
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(D)
        & quasi_total(D,cartesian_product2(A,B),C)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B) )
     => apply_binary_as_element(A,B,C,D,E,F) = apply_binary(D,E,F) ) )).

fof(redefinition_k2_lattice3,axiom,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => k2_lattice3(A) = relation_of_lattice(A) ) )).

fof(redefinition_k3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => join_commut(A,B,C) = join(A,B,C) ) )).

fof(redefinition_k4_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => meet_commut(A,B,C) = meet(A,B,C) ) )).

fof(redefinition_k4_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => relation_dom_as_subset(A,B,C) = relation_dom(C) ) )).

fof(redefinition_k4_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,C) = set_union2(B,C) ) )).

fof(redefinition_k5_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2(C,A,B)
     => relation_rng_as_subset(A,B,C) = relation_rng(C) ) )).

fof(redefinition_k5_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) )).

fof(redefinition_k5_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_intersection2(A,B,C) = set_intersection2(B,C) ) )).

fof(redefinition_k6_setfam_1,axiom,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => meet_of_subsets(A,B) = set_meet(B) ) )).

fof(redefinition_k6_subset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

fof(redefinition_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
      <=> subset(A,B) ) ) )).

fof(redefinition_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) )).

fof(redefinition_r3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_absorbing(A)
        & join_absorbing(A)
        & latt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => ( below_refl(A,B,C)
      <=> below(A,B,C) ) ) )).

fof(redefinition_r3_orders_2,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => ( related_reflexive(A,B,C)
      <=> related(A,B,C) ) ) )).

fof(reflexivity_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ordinal_subset(A,A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(reflexivity_r2_wellord2,axiom,(
    ! [A,B] : equipotent(A,A) )).

fof(reflexivity_r3_lattices,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_absorbing(A)
        & join_absorbing(A)
        & latt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => below_refl(A,B,B) ) )).

fof(reflexivity_r3_orders_2,axiom,(
    ! [A,B,C] : 
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => related_reflexive(A,B,B) ) )).

fof(s1_ordinal1__e8_6__wellord2,axiom,(
    ! [A] : 
      ( ? [B] : 
          ( ordinal(B)
          & in(B,A) )
     => ? [B] : 
          ( ordinal(B)
          & in(B,A)
          & ! [C] : 
              ( ordinal(C)
             => ( in(C,A)
               => ordinal_subset(B,C) ) ) ) ) )).

fof(s1_ordinal2__e18_27__finset_1,axiom,
    ( ( ( in(empty_set,omega)
       => ! [A] : 
            ( element(A,powerset(powerset(empty_set)))
           => ~ ( A != empty_set
                & ! [B] : 
                    ~ ( in(B,A)
                      & ! [C] : 
                          ( ( in(C,A)
                            & subset(B,C) )
                         => C = B ) ) ) ) )
      & ! [D] : 
          ( ordinal(D)
         => ( ( in(D,omega)
             => ! [E] : 
                  ( element(E,powerset(powerset(D)))
                 => ~ ( E != empty_set
                      & ! [F] : 
                          ~ ( in(F,E)
                            & ! [G] : 
                                ( ( in(G,E)
                                  & subset(F,G) )
                               => G = F ) ) ) ) )
           => ( in(succ(D),omega)
             => ! [H] : 
                  ( element(H,powerset(powerset(succ(D))))
                 => ~ ( H != empty_set
                      & ! [I] : 
                          ~ ( in(I,H)
                            & ! [J] : 
                                ( ( in(J,H)
                                  & subset(I,J) )
                               => J = I ) ) ) ) ) ) )
      & ! [D] : 
          ( ordinal(D)
         => ( ( being_limit_ordinal(D)
              & ! [K] : 
                  ( ordinal(K)
                 => ( in(K,D)
                   => ( in(K,omega)
                     => ! [L] : 
                          ( element(L,powerset(powerset(K)))
                         => ~ ( L != empty_set
                              & ! [M] : 
                                  ~ ( in(M,L)
                                    & ! [N] : 
                                        ( ( in(N,L)
                                          & subset(M,N) )
                                       => N = M ) ) ) ) ) ) ) )
           => ( D = empty_set
              | ( in(D,omega)
               => ! [O] : 
                    ( element(O,powerset(powerset(D)))
                   => ~ ( O != empty_set
                        & ! [P] : 
                            ~ ( in(P,O)
                              & ! [Q] : 
                                  ( ( in(Q,O)
                                    & subset(P,Q) )
                                 => Q = P ) ) ) ) ) ) ) ) )
   => ! [D] : 
        ( ordinal(D)
       => ( in(D,omega)
         => ! [R] : 
              ( element(R,powerset(powerset(D)))
             => ~ ( R != empty_set
                  & ! [S] : 
                      ~ ( in(S,R)
                        & ! [T] : 
                            ( ( in(T,R)
                              & subset(S,T) )
                           => T = S ) ) ) ) ) ) )).

fof(s1_relat_1__e5_21__wellord2,axiom,(
    ! [A,B,C] : 
      ( ( relation(B)
        & relation(C)
        & function(C) )
     => ? [D] : 
          ( relation(D)
          & ! [E,F] : 
              ( in(ordered_pair(E,F),D)
            <=> ( in(E,A)
                & in(F,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B) ) ) ) ) )).

fof(s1_xboole_0__e4_27_3_1__finset_1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & element(B,powerset(powerset(succ(A)))) )
     => ? [C] : 
        ! [D] : 
          ( in(D,C)
        <=> ( in(D,powerset(A))
            & ? [E] : 
                ( in(E,B)
                & D = set_difference(E,singleton(A)) ) ) ) ) )).

fof(s1_xboole_0__e6_22__wellord2,axiom,(
    ! [A] : 
    ? [B] : 
    ! [C] : 
      ( in(C,B)
    <=> ( in(C,A)
        & ordinal(C) ) ) )).

fof(s1_xboole_0__e6_27__finset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(powerset(A)))
        & relation(C)
        & function(C) )
     => ? [D] : 
        ! [E] : 
          ( in(E,D)
        <=> ( in(E,powerset(relation_dom(C)))
            & in(relation_image(C,E),B) ) ) ) )).

fof(s2_funct_1__e10_24__wellord2,axiom,(
    ! [A,B] : 
      ( ( ~ empty(A)
        & relation(B) )
     => ( ( ! [C,D,E] : 
              ( ( in(C,A)
                & ? [F] : 
                    ( C = F
                    & in(D,F)
                    & ! [G] : 
                        ( in(G,F)
                       => in(ordered_pair(D,G),B) ) )
                & ? [H] : 
                    ( C = H
                    & in(E,H)
                    & ! [I] : 
                        ( in(I,H)
                       => in(ordered_pair(E,I),B) ) ) )
             => D = E )
          & ! [C] : 
              ~ ( in(C,A)
                & ! [D] : 
                    ~ ? [J] : 
                        ( C = J
                        & in(D,J)
                        & ! [K] : 
                            ( in(K,J)
                           => in(ordered_pair(D,K),B) ) ) ) )
       => ? [C] : 
            ( relation(C)
            & function(C)
            & relation_dom(C) = A
            & ! [D] : 
                ( in(D,A)
               => ? [L] : 
                    ( D = L
                    & in(apply(C,D),L)
                    & ! [M] : 
                        ( in(M,L)
                       => in(ordered_pair(apply(C,D),M),B) ) ) ) ) ) ) )).

fof(s2_funct_1__e4_7_1__tops_2,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ( ! [C,D,E] : 
              ( ( in(C,complements_of_subsets(the_carrier(A),B))
                & ! [F] : 
                    ( element(F,powerset(the_carrier(A)))
                   => ~ ( F = C
                        & D != subset_complement(the_carrier(A),F) ) )
                & ! [G] : 
                    ( element(G,powerset(the_carrier(A)))
                   => ~ ( G = C
                        & E != subset_complement(the_carrier(A),G) ) ) )
             => D = E )
          & ! [C] : 
              ~ ( in(C,complements_of_subsets(the_carrier(A),B))
                & ! [D] : 
                    ~ ! [H] : 
                        ( element(H,powerset(the_carrier(A)))
                       => ~ ( H = C
                            & D != subset_complement(the_carrier(A),H) ) ) ) )
       => ? [C] : 
            ( relation(C)
            & function(C)
            & relation_dom(C) = complements_of_subsets(the_carrier(A),B)
            & ! [D] : 
                ( in(D,complements_of_subsets(the_carrier(A),B))
               => ! [I] : 
                    ( element(I,powerset(the_carrier(A)))
                   => ~ ( I = D
                        & apply(C,D) != subset_complement(the_carrier(A),I) ) ) ) ) ) ) )).

fof(s2_funct_1__e4_7_2__tops_2,axiom,(
    ! [A,B] : 
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ( ! [C,D,E] : 
              ( ( in(C,B)
                & ! [F] : 
                    ( element(F,powerset(the_carrier(A)))
                   => ~ ( F = C
                        & D != subset_complement(the_carrier(A),F) ) )
                & ! [G] : 
                    ( element(G,powerset(the_carrier(A)))
                   => ~ ( G = C
                        & E != subset_complement(the_carrier(A),G) ) ) )
             => D = E )
          & ! [C] : 
              ~ ( in(C,B)
                & ! [D] : 
                    ~ ! [H] : 
                        ( element(H,powerset(the_carrier(A)))
                       => ~ ( H = C
                            & D != subset_complement(the_carrier(A),H) ) ) ) )
       => ? [C] : 
            ( relation(C)
            & function(C)
            & relation_dom(C) = B
            & ! [D] : 
                ( in(D,B)
               => ! [I] : 
                    ( element(I,powerset(the_carrier(A)))
                   => ~ ( I = D
                        & apply(C,D) != subset_complement(the_carrier(A),I) ) ) ) ) ) ) )).

fof(s3_funct_1__e16_22__wellord2,axiom,(
    ! [A] : 
    ? [B] : 
      ( relation(B)
      & function(B)
      & relation_dom(B) = A
      & ! [C] : 
          ( in(C,A)
         => apply(B,C) = singleton(C) ) ) )).

fof(s3_subset_1__e1_40__pre_topc,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => ? [C] : 
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] : 
              ( element(D,powerset(the_carrier(A)))
             => ( in(D,C)
              <=> ~ ! [E] : 
                      ( element(E,powerset(the_carrier(A)))
                     => ~ ( E = D
                          & closed_subset(E,A)
                          & subset(B,D) ) ) ) ) ) ) )).

fof(s3_subset_1__e2_37_1_1__pre_topc,axiom,(
    ! [A,B] : 
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ? [C] : 
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] : 
              ( element(D,powerset(the_carrier(A)))
             => ( in(D,C)
              <=> in(set_difference(cast_as_carrier_subset(A),D),B) ) ) ) ) )).

fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

fof(symmetry_r2_wellord2,axiom,(
    ! [A,B] : 
      ( equipotent(A,B)
     => equipotent(B,A) ) )).

fof(t106_zfmisc_1,lemma,(
    ! [A,B,C,D] : 
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) )).

fof(t10_ordinal1,lemma,(
    ! [A] : in(A,succ(A)) )).

fof(t10_tops_2,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( ~ ( B != empty_set
            & complements_of_subsets(A,B) = empty_set )
        & ~ ( complements_of_subsets(A,B) != empty_set
            & B = empty_set ) ) ) )).

fof(t10_zfmisc_1,lemma,(
    ! [A,B,C,D] : 
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & A != D ) )).

fof(t115_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_rng(relation_rng_restriction(B,C)))
      <=> ( in(A,B)
          & in(A,relation_rng(C)) ) ) ) )).

fof(t116_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),A) ) )).

fof(t117_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_rng_restriction(A,B),B) ) )).

fof(t118_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B)) ) )).

fof(t118_zfmisc_1,lemma,(
    ! [A,B,C] : 
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) )).

fof(t119_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A) ) )).

fof(t119_zfmisc_1,lemma,(
    ! [A,B,C,D] : 
      ( ( subset(A,B)
        & subset(C,D) )
     => subset(cartesian_product2(A,C),cartesian_product2(B,D)) ) )).

fof(t11_tops_2,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & meet_of_subsets(A,complements_of_subsets(A,B)) != subset_complement(A,union_of_subsets(A,B)) ) ) )).

fof(t12_pre_topc,lemma,(
    ! [A] : 
      ( one_sorted_str(A)
     => cast_as_carrier_subset(A) = the_carrier(A) ) )).

fof(t12_relset_1,lemma,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) ) ) )).

fof(t12_tops_2,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & union_of_subsets(A,complements_of_subsets(A,B)) != subset_complement(A,meet_of_subsets(A,B)) ) ) )).

fof(t12_xboole_1,lemma,(
    ! [A,B] : 
      ( subset(A,B)
     => set_union2(A,B) = B ) )).

fof(t136_zfmisc_1,lemma,(
    ! [A] : 
    ? [B] : 
      ( in(A,B)
      & ! [C,D] : 
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] : 
          ( in(C,B)
         => in(powerset(C),B) )
      & ! [C] : 
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) ) ) )).

fof(t13_compts_1,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ( ~ ( compact_top_space(A)
            & ~ ! [B] : 
                  ( element(B,powerset(powerset(the_carrier(A))))
                 => ~ ( centered(B)
                      & closed_subsets(B,A)
                      & meet_of_subsets(the_carrier(A),B) = empty_set ) ) )
        & ~ ( ! [B] : 
                ( element(B,powerset(powerset(the_carrier(A))))
               => ~ ( centered(B)
                    & closed_subsets(B,A)
                    & meet_of_subsets(the_carrier(A),B) = empty_set ) )
            & ~ compact_top_space(A) ) ) ) )).

fof(t13_finset_1,lemma,(
    ! [A,B] : 
      ( ( subset(A,B)
        & finite(B) )
     => finite(A) ) )).

fof(t13_tops_2,lemma,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( finite(complements_of_subsets(the_carrier(A),B))
                & ~ finite(B) )
            & ~ ( finite(B)
                & ~ finite(complements_of_subsets(the_carrier(A),B)) ) ) ) ) )).

fof(t140_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => relation_dom_restriction(relation_rng_restriction(A,C),B) = relation_rng_restriction(A,relation_dom_restriction(C,B)) ) )).

fof(t143_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_image(C,B))
      <=> ? [D] : 
            ( in(D,relation_dom(C))
            & in(ordered_pair(D,A),C)
            & in(D,B) ) ) ) )).

fof(t144_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_image(B,A),relation_rng(B)) ) )).

fof(t145_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => subset(relation_image(B,relation_inverse_image(B,A)),A) ) )).

fof(t145_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_image(B,A) = relation_image(B,set_intersection2(relation_dom(B),A)) ) )).

fof(t146_funct_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) )).

fof(t146_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) )).

fof(t147_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( subset(A,relation_rng(B))
       => relation_image(B,relation_inverse_image(B,A)) = A ) ) )).

fof(t14_relset_1,lemma,(
    ! [A,B,C,D] : 
      ( relation_of2_as_subset(D,C,A)
     => ( subset(relation_rng(D),B)
       => relation_of2_as_subset(D,C,B) ) ) )).

fof(t15_finset_1,lemma,(
    ! [A,B] : 
      ( finite(A)
     => finite(set_intersection2(A,B)) ) )).

fof(t15_pre_topc,lemma,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A)) = B ) ) )).

fof(t160_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => relation_rng(relation_composition(A,B)) = relation_image(B,relation_rng(A)) ) ) )).

fof(t166_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_inverse_image(C,B))
      <=> ? [D] : 
            ( in(D,relation_rng(C))
            & in(ordered_pair(A,D),C)
            & in(D,B) ) ) ) )).

fof(t167_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) )).

fof(t16_relset_1,lemma,(
    ! [A,B,C,D] : 
      ( relation_of2_as_subset(D,C,A)
     => ( subset(A,B)
       => relation_of2_as_subset(D,C,B) ) ) )).

fof(t16_tops_2,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( closed_subsets(B,A)
                & ~ open_subsets(complements_of_subsets(the_carrier(A),B),A) )
            & ~ ( open_subsets(complements_of_subsets(the_carrier(A),B),A)
                & ~ closed_subsets(B,A) ) ) ) ) )).

fof(t16_wellord1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) ) ) )).

fof(t174_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ~ ( A != empty_set
          & subset(A,relation_rng(B))
          & relation_inverse_image(B,A) = empty_set ) ) )).

fof(t178_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( subset(A,B)
       => subset(relation_inverse_image(C,A),relation_inverse_image(C,B)) ) ) )).

fof(t17_finset_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( finite(A)
       => finite(relation_image(B,A)) ) ) )).

fof(t17_pre_topc,lemma,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset_complement(the_carrier(A),B) = subset_difference(the_carrier(A),cast_as_carrier_subset(A),B) ) ) )).

fof(t17_tops_2,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ~ ( open_subsets(B,A)
                & ~ closed_subsets(complements_of_subsets(the_carrier(A),B),A) )
            & ~ ( closed_subsets(complements_of_subsets(the_carrier(A),B),A)
                & ~ open_subsets(B,A) ) ) ) ) )).

fof(t17_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A) ) )).

fof(t17_xboole_1,lemma,(
    ! [A,B] : subset(set_intersection2(A,B),A) )).

fof(t18_finset_1,lemma,(
    ! [A] : 
      ( finite(A)
     => ! [B] : 
          ( element(B,powerset(powerset(A)))
         => ~ ( B != empty_set
              & ! [C] : 
                  ~ ( in(C,B)
                    & ! [D] : 
                        ( ( in(D,B)
                          & subset(C,D) )
                       => D = C ) ) ) ) ) )).

fof(t18_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A)) ) )).

fof(t19_wellord1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,relation_field(C))
          & in(A,B) ) ) ) )).

fof(t19_xboole_1,lemma,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) )).

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_lattice3,lemma,(
    ! [A,B] : 
      ( element(B,the_carrier(boole_lattice(A)))
     => ! [C] : 
          ( element(C,the_carrier(boole_lattice(A)))
         => ( join(boole_lattice(A),B,C) = set_union2(B,C)
            & meet(boole_lattice(A),B,C) = set_intersection2(B,C) ) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t1_xboole_1,lemma,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) )).

fof(t1_zfmisc_1,lemma,(
    powerset(empty_set) = singleton(empty_set) )).

fof(t20_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) ) ) ) )).

fof(t20_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) )).

fof(t21_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ! [C] : 
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(relation_composition(C,B)))
          <=> ( in(A,relation_dom(C))
              & in(apply(C,A),relation_dom(B)) ) ) ) ) )).

fof(t21_funct_2,lemma,(
    ! [A,B,C,D] : 
      ( ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) )
     => ! [E] : 
          ( ( relation(E)
            & function(E) )
         => ( in(C,A)
           => ( B = empty_set
              | apply(relation_composition(D,E),C) = apply(E,apply(D,C)) ) ) ) ) )).

fof(t21_ordinal1,lemma,(
    ! [A] : 
      ( epsilon_transitive(A)
     => ! [B] : 
          ( ordinal(B)
         => ( proper_subset(A,B)
           => in(A,B) ) ) ) )).

fof(t21_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => subset(A,cartesian_product2(relation_dom(A),relation_rng(A))) ) )).

fof(t21_wellord1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => subset(fiber(relation_restriction(C,A),B),fiber(C,B)) ) )).

fof(t22_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ! [C] : 
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(relation_composition(C,B)))
           => apply(relation_composition(C,B),A) = apply(B,apply(C,A)) ) ) ) )).

fof(t22_pre_topc,lemma,(
    ! [A] : 
      ( one_sorted_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)) = B ) ) )).

fof(t22_relset_1,lemma,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,B,A)
     => ( ! [D] : 
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) )
      <=> relation_dom_as_subset(B,A,C) = B ) ) )).

fof(t22_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( reflexive(B)
       => reflexive(relation_restriction(B,A)) ) ) )).

fof(t23_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ! [C] : 
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(B))
           => apply(relation_composition(B,C),A) = apply(C,apply(B,A)) ) ) ) )).

fof(t23_lattices,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & meet_absorbing(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => below(A,meet_commut(A,B,C),B) ) ) ) )).

fof(t23_ordinal1,lemma,(
    ! [A,B] : 
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) )).

fof(t23_relset_1,lemma,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => ( ! [D] : 
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(E,D),C) )
      <=> relation_rng_as_subset(A,B,C) = B ) ) )).

fof(t23_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( connected(B)
       => connected(relation_restriction(B,A)) ) ) )).

fof(t24_ordinal1,lemma,(
    ! [A] : 
      ( ordinal(A)
     => ! [B] : 
          ( ordinal(B)
         => ~ ( ~ in(A,B)
              & A != B
              & ~ in(B,A) ) ) ) )).

fof(t24_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( transitive(B)
       => transitive(relation_restriction(B,A)) ) ) )).

fof(t25_orders_2,lemma,(
    ! [A] : 
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ~ ( related(A,B,C)
                  & related(A,C,B)
                  & B != C ) ) ) ) )).

fof(t25_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( subset(A,B)
           => ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) ) ) ) ) )).

fof(t25_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) ) ) )).

fof(t25_wellord2,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( well_orders(B,A)
       => ( relation_field(relation_restriction(B,A)) = A
          & well_ordering(relation_restriction(B,A)) ) ) ) )).

fof(t26_finset_1,lemma,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( finite(relation_dom(A))
       => finite(relation_rng(A)) ) ) )).

fof(t26_lattices,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ~ ( below(A,B,C)
                  & below(A,C,B)
                  & B != C ) ) ) ) )).

fof(t26_orders_2,lemma,(
    ! [A] : 
      ( ( transitive_relstr(A)
        & rel_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ! [D] : 
                  ( element(D,the_carrier(A))
                 => ~ ( related(A,B,C)
                      & related(A,C,D)
                      & ~ related(A,B,D) ) ) ) ) ) )).

fof(t26_wellord2,lemma,(
    ! [A] : 
    ? [B] : 
      ( relation(B)
      & well_orders(B,A) ) )).

fof(t26_xboole_1,lemma,(
    ! [A,B,C] : 
      ( subset(A,B)
     => subset(set_intersection2(A,C),set_intersection2(B,C)) ) )).

fof(t28_wellord2,lemma,(
    ! [A] : 
      ( ~ empty(A)
     => ~ ( ! [B] : 
              ~ ( in(B,A)
                & B = empty_set )
          & ! [B] : 
              ( ( relation(B)
                & function(B) )
             => ~ ( relation_dom(B) = A
                  & ! [C] : 
                      ( in(C,A)
                     => in(apply(B,C),C) ) ) ) ) ) )).

fof(t28_xboole_1,lemma,(
    ! [A,B] : 
      ( subset(A,B)
     => set_intersection2(A,B) = A ) )).

fof(t29_tops_1,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( closed_subset(B,A)
                & ~ open_subset(subset_complement(the_carrier(A),B),A) )
            & ~ ( open_subset(subset_complement(the_carrier(A),B),A)
                & ~ closed_subset(B,A) ) ) ) ) )).

fof(t2_boole,axiom,(
    ! [A] : set_intersection2(A,empty_set) = empty_set )).

fof(t2_lattice3,lemma,(
    ! [A,B] : 
      ( element(B,the_carrier(boole_lattice(A)))
     => ! [C] : 
          ( element(C,the_carrier(boole_lattice(A)))
         => ( ~ ( below(boole_lattice(A),B,C)
                & ~ subset(B,C) )
            & ~ ( subset(B,C)
                & ~ below(boole_lattice(A),B,C) ) ) ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(t2_wellord2,lemma,(
    ! [A] : reflexive(inclusion_relation(A)) )).

fof(t2_xboole_1,lemma,(
    ! [A] : subset(empty_set,A) )).

fof(t30_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) ) ) )).

fof(t30_tops_1,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( open_subset(B,A)
                & ~ closed_subset(subset_complement(the_carrier(A),B),A) )
            & ~ ( closed_subset(subset_complement(the_carrier(A),B),A)
                & ~ open_subset(B,A) ) ) ) ) )).

fof(t31_ordinal1,lemma,(
    ! [A] : 
      ( ! [B] : 
          ( in(B,A)
         => ( ordinal(B)
            & subset(B,A) ) )
     => ordinal(A) ) )).

fof(t31_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( well_founded_relation(B)
       => well_founded_relation(relation_restriction(B,A)) ) ) )).

fof(t32_filter_1,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A))
                    & ~ below_refl(A,B,C) )
                & ~ ( below_refl(A,B,C)
                    & ~ in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A)) ) ) ) ) ) )).

fof(t32_ordinal1,lemma,(
    ! [A,B] : 
      ( ordinal(B)
     => ~ ( subset(A,B)
          & A != empty_set
          & ! [C] : 
              ( ordinal(C)
             => ~ ( in(C,A)
                  & ! [D] : 
                      ( ordinal(D)
                     => ( in(D,A)
                       => ordinal_subset(C,D) ) ) ) ) ) ) )).

fof(t32_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( well_ordering(B)
       => well_ordering(relation_restriction(B,A)) ) ) )).

fof(t33_ordinal1,lemma,(
    ! [A] : 
      ( ordinal(A)
     => ! [B] : 
          ( ordinal(B)
         => ( in(A,B)
          <=> ordinal_subset(succ(A),B) ) ) ) )).

fof(t33_xboole_1,lemma,(
    ! [A,B,C] : 
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) )).

fof(t33_zfmisc_1,lemma,(
    ! [A,B,C,D] : 
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & B = D ) ) )).

fof(t34_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( B = identity_relation(A)
      <=> ( relation_dom(B) = A
          & ! [C] : 
              ( in(C,A)
             => apply(B,C) = C ) ) ) ) )).

fof(t35_funct_1,lemma,(
    ! [A,B] : 
      ( in(B,A)
     => apply(identity_relation(A),B) = B ) )).

fof(t36_xboole_1,lemma,(
    ! [A,B] : subset(set_difference(A,B),A) )).

fof(t37_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( relation_rng(A) = relation_dom(relation_inverse(A))
        & relation_dom(A) = relation_rng(relation_inverse(A)) ) ) )).

fof(t37_xboole_1,lemma,(
    ! [A,B] : 
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) )).

fof(t37_zfmisc_1,lemma,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(t38_zfmisc_1,lemma,(
    ! [A,B,C] : 
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) ) )).

fof(t39_wellord1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => ( ( well_ordering(B)
          & subset(A,relation_field(B)) )
       => relation_field(relation_restriction(B,A)) = A ) ) )).

fof(t39_xboole_1,lemma,(
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) )).

fof(t39_zfmisc_1,lemma,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t3_lattice3,lemma,(
    ! [A] : 
      ( lower_bounded_semilattstr(boole_lattice(A))
      & bottom_of_semilattstr(boole_lattice(A)) = empty_set ) )).

fof(t3_ordinal1,lemma,(
    ! [A,B,C] : 
      ~ ( in(A,B)
        & in(B,C)
        & in(C,A) ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t3_wellord2,lemma,(
    ! [A] : transitive(inclusion_relation(A)) )).

fof(t3_xboole_0,lemma,(
    ! [A,B] : 
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : 
              ~ ( in(C,A)
                & in(C,B) ) )
      & ~ ( ? [C] : 
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) ) ) )).

fof(t3_xboole_1,lemma,(
    ! [A] : 
      ( subset(A,empty_set)
     => A = empty_set ) )).

fof(t40_xboole_1,lemma,(
    ! [A,B] : set_difference(set_union2(A,B),B) = set_difference(A,B) )).

fof(t41_ordinal1,lemma,(
    ! [A] : 
      ( ordinal(A)
     => ( being_limit_ordinal(A)
      <=> ! [B] : 
            ( ordinal(B)
           => ( in(B,A)
             => in(succ(B),A) ) ) ) ) )).

fof(t42_ordinal1,lemma,(
    ! [A] : 
      ( ordinal(A)
     => ( ~ ( ~ being_limit_ordinal(A)
            & ! [B] : 
                ( ordinal(B)
               => A != succ(B) ) )
        & ~ ( ? [B] : 
                ( ordinal(B)
                & A = succ(B) )
            & being_limit_ordinal(A) ) ) ) )).

fof(t43_subset_1,lemma,(
    ! [A,B] : 
      ( element(B,powerset(A))
     => ! [C] : 
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) ) ) )).

fof(t44_pre_topc,lemma,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ~ ( ! [C] : 
                  ( element(C,powerset(the_carrier(A)))
                 => ~ ( in(C,B)
                      & ~ closed_subset(C,A) ) )
              & ~ closed_subset(meet_of_subsets(the_carrier(A),B),A) ) ) ) )).

fof(t44_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => subset(relation_dom(relation_composition(A,B)),relation_dom(A)) ) ) )).

fof(t44_tops_1,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset(interior(A,B),B) ) ) )).

fof(t45_pre_topc,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ~ ( in(C,the_carrier(A))
                & ~ ( ~ ( in(C,topstr_closure(A,B))
                        & ~ ! [D] : 
                              ( element(D,powerset(the_carrier(A)))
                             => ~ ( closed_subset(D,A)
                                  & subset(B,D)
                                  & ~ in(C,D) ) ) )
                    & ~ ( ! [D] : 
                            ( element(D,powerset(the_carrier(A)))
                           => ~ ( closed_subset(D,A)
                                & subset(B,D)
                                & ~ in(C,D) ) )
                        & ~ in(C,topstr_closure(A,B)) ) ) ) ) ) )).

fof(t45_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => subset(relation_rng(relation_composition(A,B)),relation_rng(B)) ) ) )).

fof(t45_xboole_1,lemma,(
    ! [A,B] : 
      ( subset(A,B)
     => B = set_union2(A,set_difference(B,A)) ) )).

fof(t46_funct_2,lemma,(
    ! [A,B,C,D] : 
      ( ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) )
     => ( B != empty_set
       => ! [E] : 
            ( in(E,relation_inverse_image(D,C))
          <=> ( in(E,A)
              & in(apply(D,E),C) ) ) ) ) )).

fof(t46_pre_topc,lemma,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ~ ! [C] : 
                ( element(C,powerset(powerset(the_carrier(A))))
               => ~ ( ! [D] : 
                        ( element(D,powerset(the_carrier(A)))
                       => ( ~ ( in(D,C)
                              & ~ ( closed_subset(D,A)
                                  & subset(B,D) ) )
                          & ~ ( closed_subset(D,A)
                              & subset(B,D)
                              & ~ in(D,C) ) ) )
                    & topstr_closure(A,B) = meet_of_subsets(the_carrier(A),C) ) ) ) ) )).

fof(t46_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) ) ) ) )).

fof(t46_setfam_1,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & complements_of_subsets(A,B) = empty_set ) ) )).

fof(t46_zfmisc_1,lemma,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).

fof(t47_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ( subset(relation_dom(A),relation_rng(B))
           => relation_rng(relation_composition(B,A)) = relation_rng(A) ) ) ) )).

fof(t47_setfam_1,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B)) ) ) )).

fof(t48_pre_topc,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => subset(B,topstr_closure(A,B)) ) ) )).

fof(t48_setfam_1,lemma,(
    ! [A,B] : 
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => union_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B)) ) ) )).

fof(t48_xboole_1,lemma,(
    ! [A,B] : set_difference(A,set_difference(A,B)) = set_intersection2(A,B) )).

fof(t49_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => relation_isomorphism(B,A,function_inverse(C)) ) ) ) ) )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t4_wellord2,lemma,(
    ! [A] : 
      ( ordinal(A)
     => connected(inclusion_relation(A)) ) )).

fof(t4_xboole_0,lemma,(
    ! [A,B] : 
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : ~ in(C,set_intersection2(A,B)) )
      & ~ ( ? [C] : in(C,set_intersection2(A,B))
          & disjoint(A,B) ) ) )).

fof(t50_subset_1,lemma,(
    ! [A] : 
      ( A != empty_set
     => ! [B] : 
          ( element(B,powerset(A))
         => ! [C] : 
              ( element(C,A)
             => ( ~ in(C,B)
               => in(C,subset_complement(A,B)) ) ) ) ) )).

fof(t51_tops_1,lemma,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => open_subset(interior(A,B),A) ) ) )).

fof(t52_pre_topc,lemma,(
    ! [A] : 
      ( top_str(A)
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ( ~ ( closed_subset(B,A)
                & topstr_closure(A,B) != B )
            & ~ ( topological_space(A)
                & topstr_closure(A,B) = B
                & ~ closed_subset(B,A) ) ) ) ) )).

fof(t53_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => ( ( reflexive(A)
                   => reflexive(B) )
                  & ( transitive(A)
                   => transitive(B) )
                  & ( connected(A)
                   => connected(B) )
                  & ( antisymmetric(A)
                   => antisymmetric(B) )
                  & ( well_founded_relation(A)
                   => well_founded_relation(B) ) ) ) ) ) ) )).

fof(t54_funct_1,lemma,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ! [B] : 
            ( ( relation(B)
              & function(B) )
           => ( B = function_inverse(A)
            <=> ( relation_dom(B) = relation_rng(A)
                & ! [C,D] : 
                    ( ( ( in(C,relation_rng(A))
                        & D = apply(B,C) )
                     => ( in(D,relation_dom(A))
                        & C = apply(A,D) ) )
                    & ( ( in(D,relation_dom(A))
                        & C = apply(A,D) )
                     => ( in(C,relation_rng(A))
                        & D = apply(B,C) ) ) ) ) ) ) ) ) )).

fof(t54_subset_1,lemma,(
    ! [A,B,C] : 
      ( element(C,powerset(A))
     => ~ ( in(B,subset_complement(A,C))
          & in(B,C) ) ) )).

fof(t54_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( relation(B)
         => ! [C] : 
              ( ( relation(C)
                & function(C) )
             => ( ( well_ordering(A)
                  & relation_isomorphism(A,B,C) )
               => well_ordering(B) ) ) ) ) )).

fof(t55_funct_1,lemma,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ( relation_rng(A) = relation_dom(function_inverse(A))
          & relation_dom(A) = relation_rng(function_inverse(A)) ) ) ) )).

fof(t55_tops_1,lemma,(
    ! [A] : 
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( top_str(B)
         => ! [C] : 
              ( element(C,powerset(the_carrier(A)))
             => ! [D] : 
                  ( element(D,powerset(the_carrier(B)))
                 => ( ~ ( open_subset(D,B)
                        & interior(B,D) != D )
                    & ~ ( interior(A,C) = C
                        & ~ open_subset(C,A) ) ) ) ) ) ) )).

fof(t56_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( ! [B,C] : ~ in(ordered_pair(B,C),A)
       => A = empty_set ) ) )).

fof(t57_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( ( one_to_one(B)
          & in(A,relation_rng(B)) )
       => ( A = apply(B,apply(function_inverse(B),A))
          & A = apply(relation_composition(function_inverse(B),B),A) ) ) ) )).

fof(t5_connsp_2,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] : 
          ( element(B,powerset(the_carrier(A)))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ~ ( open_subset(B,A)
                  & in(C,B)
                  & ~ point_neighbourhood(B,A,C) ) ) ) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] : 
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) )).

fof(t5_tops_2,lemma,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] : 
          ( element(B,powerset(powerset(the_carrier(A))))
         => ~ ( is_a_cover_of_carrier(A,B)
              & B = empty_set ) ) ) )).

fof(t5_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( well_founded_relation(A)
      <=> is_well_founded_in(A,relation_field(A)) ) ) )).

fof(t5_wellord2,lemma,(
    ! [A] : antisymmetric(inclusion_relation(A)) )).

fof(t60_relat_1,lemma,
    ( relation_dom(empty_set) = empty_set
    & relation_rng(empty_set) = empty_set )).

fof(t60_xboole_1,lemma,(
    ! [A,B] : 
      ~ ( subset(A,B)
        & proper_subset(B,A) ) )).

fof(t62_funct_1,lemma,(
    ! [A] : 
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => one_to_one(function_inverse(A)) ) ) )).

fof(t63_xboole_1,lemma,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & disjoint(B,C) )
     => disjoint(A,C) ) )).

fof(t64_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( ( relation_dom(A) = empty_set
          | relation_rng(A) = empty_set )
       => A = empty_set ) ) )).

fof(t65_relat_1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( relation_dom(A) = empty_set
      <=> relation_rng(A) = empty_set ) ) )).

fof(t65_zfmisc_1,lemma,(
    ! [A,B] : 
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) )).

fof(t68_funct_1,lemma,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ! [C] : 
          ( ( relation(C)
            & function(C) )
         => ( B = relation_dom_restriction(C,A)
          <=> ( relation_dom(B) = set_intersection2(relation_dom(C),A)
              & ! [D] : 
                  ( in(D,relation_dom(B))
                 => apply(B,D) = apply(C,D) ) ) ) ) ) )).

fof(t69_enumset1,lemma,(
    ! [A] : unordered_pair(A,A) = singleton(A) )).

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t6_funct_2,lemma,(
    ! [A,B,C,D] : 
      ( ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) )
     => ( in(C,A)
       => ( B = empty_set
          | in(apply(D,C),relation_rng(D)) ) ) ) )).

fof(t6_wellord2,lemma,(
    ! [A] : 
      ( ordinal(A)
     => well_founded_relation(inclusion_relation(A)) ) )).

fof(t6_zfmisc_1,lemma,(
    ! [A,B] : 
      ( subset(singleton(A),singleton(B))
     => A = B ) )).

fof(t70_funct_1,lemma,(
    ! [A,B,C] : 
      ( ( relation(C)
        & function(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) )).

fof(t71_relat_1,lemma,(
    ! [A] : 
      ( relation_dom(identity_relation(A)) = A
      & relation_rng(identity_relation(A)) = A ) )).

fof(t72_funct_1,lemma,(
    ! [A,B,C] : 
      ( ( relation(C)
        & function(C) )
     => ( in(B,A)
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) )).

fof(t74_relat_1,lemma,(
    ! [A,B,C,D] : 
      ( relation(D)
     => ( in(ordered_pair(A,B),relation_composition(identity_relation(C),D))
      <=> ( in(A,C)
          & in(ordered_pair(A,B),D) ) ) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t7_lattice3,conjecture,(
    ! [A] : 
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] : 
          ( element(B,the_carrier(A))
         => ! [C] : 
              ( element(C,the_carrier(A))
             => ( ~ ( below_refl(A,B,C)
                    & ~ related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C)) )
                & ~ ( related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C))
                    & ~ below_refl(A,B,C) ) ) ) ) ) )).

fof(t7_mcart_1,lemma,(
    ! [A,B] : 
      ( pair_first(ordered_pair(A,B)) = A
      & pair_second(ordered_pair(A,B)) = B ) )).

fof(t7_tarski,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & ! [C] : 
            ~ ( in(C,B)
              & ! [D] : 
                  ~ ( in(D,B)
                    & in(D,C) ) ) ) )).

fof(t7_wellord2,lemma,(
    ! [A] : 
      ( ordinal(A)
     => well_ordering(inclusion_relation(A)) ) )).

fof(t7_xboole_1,lemma,(
    ! [A,B] : subset(A,set_union2(A,B)) )).

fof(t83_xboole_1,lemma,(
    ! [A,B] : 
      ( disjoint(A,B)
    <=> set_difference(A,B) = A ) )).

fof(t86_relat_1,lemma,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_dom(relation_dom_restriction(C,B)))
      <=> ( in(A,B)
          & in(A,relation_dom(C)) ) ) ) )).

fof(t88_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_dom_restriction(B,A),B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(t8_funct_1,lemma,(
    ! [A,B,C] : 
      ( ( relation(C)
        & function(C) )
     => ( in(ordered_pair(A,B),C)
      <=> ( in(A,relation_dom(C))
          & B = apply(C,A) ) ) ) )).

fof(t8_wellord1,lemma,(
    ! [A] : 
      ( relation(A)
     => ( well_orders(A,relation_field(A))
      <=> well_ordering(A) ) ) )).

fof(t8_xboole_1,lemma,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(C,B) )
     => subset(set_union2(A,C),B) ) )).

fof(t8_zfmisc_1,lemma,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => A = B ) )).

fof(t90_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A) ) )).

fof(t92_zfmisc_1,lemma,(
    ! [A,B] : 
      ( in(A,B)
     => subset(A,union(B)) ) )).

fof(t94_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B) ) )).

fof(t99_relat_1,lemma,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) )).

fof(t99_zfmisc_1,lemma,(
    ! [A] : union(powerset(A)) = A )).

fof(t9_funct_2,lemma,(
    ! [A,B,C,D] : 
      ( ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) )
     => ( subset(B,C)
       => ( ( B = empty_set
            & A != empty_set )
          | ( function(D)
            & quasi_total(D,A,C)
            & relation_of2_as_subset(D,A,C) ) ) ) ) )).

fof(t9_tarski,axiom,(
    ! [A] : 
    ? [B] : 
      ( in(A,B)
      & ! [C,D] : 
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] : 
          ~ ( in(C,B)
            & ! [D] : 
                ~ ( in(D,B)
                  & ! [E] : 
                      ( subset(E,C)
                     => in(E,D) ) ) )
      & ! [C] : 
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) ) ) )).

fof(t9_zfmisc_1,lemma,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => B = C ) )).
%------------------------------------------------------------------------------
