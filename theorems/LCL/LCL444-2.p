%------------------------------------------------------------------------------
% File     : LCL444-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.33 v7.3.0, 0.25 v6.2.0, 0.50 v6.1.0, 0.64 v6.0.0, 0.67 v5.5.0, 0.75 v5.4.0, 0.72 v5.3.0, 0.80 v5.2.0, 0.69 v5.1.0, 0.75 v5.0.0, 0.67 v4.0.1, 0.29 v4.0.0, 0.43 v3.7.0, 0.57 v3.4.0, 0.80 v3.3.0, 0.67 v3.2.0
% Syntax   : Number of clauses     :    7 (   0 non-Horn;   3 unit;   4 RR)
%            Number of atoms       :   12 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    9 (   5 constant; 0-3 arity)
%            Number of variables   :   21 (   3 singleton)
%            Maximal term depth    :    5 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_PropLog_Odeduction_0,axiom,
    ( ~ c_in(V_q,c_PropLog_Othms(c_insert(V_p,V_H,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a))
    | c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms_ODN_0,axiom,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,c_PropLog_Opl_Ofalse,T_a),c_PropLog_Opl_Ofalse,T_a),V_p,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms_OH_0,axiom,
    ( ~ c_in(V_p,V_H,tc_PropLog_Opl(T_a))
    | c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms_OMP_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(V_q,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_Set_OinsertCI_0,axiom,
    ( ~ c_in(V_a,V_B,T_a)
    | c_in(V_a,c_insert(V_b,V_B,T_a),T_a) )).

cnf(cls_Set_OinsertCI_1,axiom,
    ( c_in(V_x,c_insert(V_x,V_B,T_a),T_a) )).

cnf(cls_conjecture_0,negated_conjecture,
    ( ~ c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(v_p,v_q,t_a),c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(v_p,c_PropLog_Opl_Ofalse,t_a),v_q,t_a),v_q,t_a),t_a),c_PropLog_Othms(v_H,t_a),tc_PropLog_Opl(t_a)) )).

%------------------------------------------------------------------------------
