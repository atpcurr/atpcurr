fof(t53_filter_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_filter_0(A, B, k7_filter_0(A, B, C))=C) ) ) ) ) ) ).
fof(cc1_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v10_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v4_lattices(A) &  (v5_lattices(A) &  (v6_lattices(A) &  (v7_lattices(A) &  (v8_lattices(A) & v9_lattices(A)) ) ) ) ) ) ) ) ) ).
fof(cc4_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v15_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v13_lattices(A) & v14_lattices(A)) ) ) ) ) ).
fof(cc5_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  ( ( ~ (v2_struct_0(A))  & v17_lattices(A))  =>  ( ~ (v2_struct_0(A))  &  (v11_lattices(A) &  (v15_lattices(A) & v16_lattices(A)) ) ) ) ) ) ).
fof(commutativity_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k3_lattices(A, C, B)) ) ).
fof(commutativity_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k4_lattices(A, B, C)=k4_lattices(A, C, B)) ) ).
fof(d10_filter_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_filter_0(A, B, C)=k4_lattices(A, k4_filter_0(A, B, C), k4_filter_0(A, C, B))) ) ) ) ) ) ).
fof(d11_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (v11_lattices(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k2_lattices(A, B, k1_lattices(A, C, D))=k1_lattices(A, k2_lattices(A, B, C), k2_lattices(A, B, D))) ) ) ) ) ) ) ) ) ).
fof(d5_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l2_lattices(A))  =>  (v5_lattices(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k1_lattices(A, B, k1_lattices(A, C, D))=k1_lattices(A, k1_lattices(A, B, C), D)) ) ) ) ) ) ) ) ) ).
fof(d7_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_lattices(A))  =>  (v7_lattices(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k2_lattices(A, B, k2_lattices(A, C, D))=k2_lattices(A, k2_lattices(A, B, C), D)) ) ) ) ) ) ) ) ) ).
fof(d8_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  =>  (v8_lattices(A) <=>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k1_lattices(A, k2_lattices(A, B, C), C)=C) ) ) ) ) ) ) ).
fof(dt_k4_filter_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k4_filter_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k7_filter_0, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => m1_subset_1(k7_filter_0(A, B, C), u1_struct_0(A))) ) ).
fof(dt_k7_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  & l3_lattices(A))  & m1_subset_1(B, u1_struct_0(A)))  => m1_subset_1(k7_lattices(A, B), u1_struct_0(A))) ) ).
fof(dt_l3_lattices, axiom,  (! [A] :  (l3_lattices(A) =>  (l1_lattices(A) & l2_lattices(A)) ) ) ).
fof(rd2_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) &  (v8_lattices(A) &  (v9_lattices(A) & l3_lattices(A)) ) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k4_lattices(A, B, B)=B) ) ).
fof(rd4_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & l3_lattices(A)) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k4_lattices(A, k5_lattices(A), B)=k5_lattices(A)) ) ).
fof(rd5_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v14_lattices(A) & l3_lattices(A)) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k4_lattices(A, k6_lattices(A), B)=B) ) ).
fof(rd6_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v14_lattices(A) & l3_lattices(A)) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k3_lattices(A, k6_lattices(A), B)=k6_lattices(A)) ) ).
fof(rd7_lattices, axiom,  (! [A, B] :  ( ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  & m1_subset_1(B, u1_struct_0(A)))  => k7_lattices(A, k7_lattices(A, B))=B) ) ).
fof(redefinition_k3_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v4_lattices(A) & l2_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k3_lattices(A, B, C)=k1_lattices(A, B, C)) ) ).
fof(redefinition_k4_lattices, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  &  (v6_lattices(A) & l1_lattices(A)) )  &  (m1_subset_1(B, u1_struct_0(A)) & m1_subset_1(C, u1_struct_0(A))) )  => k4_lattices(A, B, C)=k2_lattices(A, B, C)) ) ).
fof(t11_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v11_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) => k3_lattices(A, B, k4_lattices(A, C, D))=k4_lattices(A, k3_lattices(A, B, C), k3_lattices(A, B, D))) ) ) ) ) ) ) ) ).
fof(t14_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v13_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => k3_lattices(A, k5_lattices(A), B)=B) ) ) ) ).
fof(t20_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => k4_lattices(A, k7_lattices(A, B), B)=k5_lattices(A)) ) ) ) ).
fof(t21_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) => k3_lattices(A, k7_lattices(A, B), B)=k6_lattices(A)) ) ) ) ).
fof(t23_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_lattices(A, k4_lattices(A, B, C))=k3_lattices(A, k7_lattices(A, B), k7_lattices(A, C))) ) ) ) ) ) ).
fof(t24_lattices, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_lattices(A, k3_lattices(A, B, C))=k4_lattices(A, k7_lattices(A, B), k7_lattices(A, C))) ) ) ) ) ) ).
fof(t42_filter_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k4_filter_0(A, B, C)=k3_lattices(A, k7_lattices(A, B), C)) ) ) ) ) ) ).
fof(t50_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_filter_0(A, B, C)=k3_lattices(A, k4_lattices(A, B, C), k4_lattices(A, k7_lattices(A, B), k7_lattices(A, C)))) ) ) ) ) ) ).
fof(t51_filter_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) &  (v17_lattices(A) & l3_lattices(A)) ) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (k7_lattices(A, k4_filter_0(A, B, C))=k4_lattices(A, B, k7_lattices(A, C)) &  (k7_lattices(A, k7_filter_0(A, B, C))=k3_lattices(A, k4_lattices(A, B, k7_lattices(A, C)), k4_lattices(A, k7_lattices(A, B), C)) &  (k7_lattices(A, k7_filter_0(A, B, C))=k7_filter_0(A, B, k7_lattices(A, C)) & k7_lattices(A, k7_filter_0(A, B, C))=k7_filter_0(A, k7_lattices(A, B), C)) ) ) ) ) ) ) ) ) ).
fof(t61_filter_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v10_lattices(A) & l3_lattices(A)) )  =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) => k7_filter_0(A, B, C)=k7_filter_0(A, C, B)) ) ) ) ) ) ).