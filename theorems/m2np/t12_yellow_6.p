fof(t12_yellow_6, conjecture,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_waybel_0(B, A))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  &  (v2_yellow_6(C, A, B) & m1_yellow_6(C, A, B)) )  =>  (! [D] :  (m1_subset_1(D, u1_struct_0(B)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(C)) =>  (! [G] :  (m1_subset_1(G, u1_struct_0(C)) =>  ( (D=F &  (E=G & r1_orders_2(B, D, E)) )  => r1_orders_2(C, F, G)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d1_subset_1, axiom,  (! [A] :  (! [B] :  ( ( ~ (v1_xboole_0(A))  =>  (m1_subset_1(B, A) <=> r2_hidden(B, A)) )  &  (v1_xboole_0(A) =>  (m1_subset_1(B, A) <=> v1_xboole_0(B)) ) ) ) ) ).
fof(d7_yellow_6, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) =>  (! [C] :  (m1_yellow_6(C, A, B) =>  (v2_yellow_6(C, A, B) <=>  (v4_yellow_0(C, B) & m1_yellow_0(C, B)) ) ) ) ) ) ) ) ).
fof(dt_l1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => l1_struct_0(A)) ) ).
fof(dt_l1_waybel_0, axiom,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  (l1_waybel_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(dt_m1_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_yellow_0(B, A) => l1_orders_2(B)) ) ) ) ).
fof(fc2_struct_0, axiom,  (! [A] :  ( ( ~ (v2_struct_0(A))  & l1_struct_0(A))  =>  ~ (v1_xboole_0(u1_struct_0(A))) ) ) ).
fof(t60_yellow_0, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  ( (v4_yellow_0(B, A) & m1_yellow_0(B, A))  =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (! [D] :  (m1_subset_1(D, u1_struct_0(A)) =>  (! [E] :  (m1_subset_1(E, u1_struct_0(B)) =>  (! [F] :  (m1_subset_1(F, u1_struct_0(B)) =>  ( (E=C &  (F=D &  (r1_orders_2(A, C, D) & r2_hidden(E, u1_struct_0(B))) ) )  => r1_orders_2(B, E, F)) ) ) ) ) ) ) ) ) ) ) ) ) ).