fof(t36_tmap_1, conjecture,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  ( ~ (r1_tsep_1(B, C))  =>  ( ( ~ (r1_tsep_1(k2_tsep_1(A, B, C), D))  =>  ( ~ (r1_tsep_1(B, D))  &  ~ (r1_tsep_1(C, D)) ) )  &  ( ~ (r1_tsep_1(D, k2_tsep_1(A, B, C)))  =>  ( ~ (r1_tsep_1(D, B))  &  ~ (r1_tsep_1(D, C)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k2_tsep_1, axiom,  (! [A, B, C] :  ( ( ( ~ (v2_struct_0(A))  & l1_pre_topc(A))  &  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  &  ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A)) ) )  =>  ( ~ (v2_struct_0(k2_tsep_1(A, B, C)))  &  (v1_pre_topc(k2_tsep_1(A, B, C)) & m1_pre_topc(k2_tsep_1(A, B, C), A)) ) ) ) ).
fof(t18_tmap_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  (m1_pre_topc(B, C) =>  ( (r1_tsep_1(B, D) & r1_tsep_1(D, B))  |  ( ~ (r1_tsep_1(C, D))  &  ~ (r1_tsep_1(D, C)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t26_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  (! [D] :  ( ( ~ (v2_struct_0(D))  & m1_pre_topc(D, A))  =>  ( ( ~ (r1_tsep_1(B, C))  => k2_tsep_1(A, B, C)=k2_tsep_1(A, C, B))  &  ( ( ( ~ (r1_tsep_1(B, C))  &  ~ (r1_tsep_1(k2_tsep_1(A, B, C), D)) )  |  ( ~ (r1_tsep_1(C, D))  &  ~ (r1_tsep_1(B, k2_tsep_1(A, C, D))) ) )  => k2_tsep_1(A, k2_tsep_1(A, B, C), D)=k2_tsep_1(A, B, k2_tsep_1(A, C, D))) ) ) ) ) ) ) ) ) ) ).
fof(t27_tsep_1, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  &  (v2_pre_topc(A) & l1_pre_topc(A)) )  =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & m1_pre_topc(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & m1_pre_topc(C, A))  =>  ( ~ (r1_tsep_1(B, C))  =>  (m1_pre_topc(k2_tsep_1(A, B, C), B) & m1_pre_topc(k2_tsep_1(A, B, C), C)) ) ) ) ) ) ) ) ).