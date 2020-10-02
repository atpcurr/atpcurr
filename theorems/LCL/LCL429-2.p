%------------------------------------------------------------------------------
% File     : LCL429-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.15 v5.2.0, 0.08 v5.1.0, 0.06 v5.0.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :    8 (   0 non-Horn;   5 unit;   4 RR)
%            Number of atoms       :   14 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    2 (   0 propositional; 3-3 arity)
%            Number of functors    :   15 (   7 constant; 0-3 arity)
%            Number of variables   :   27 (   1 singleton)
%            Maximal term depth    :    5 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_PropLog_ODiff__weaken__left_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(c_minus(V_A,V_B,tc_set(tc_PropLog_Opl(T_a))),T_a),tc_PropLog_Opl(T_a))
    | ~ c_lessequals(V_A,V_C,tc_set(tc_PropLog_Opl(T_a)))
    | c_in(V_p,c_PropLog_Othms(c_minus(V_C,V_B,tc_set(tc_PropLog_Opl(T_a))),T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Ohyps__Diff_0,axiom,
    ( c_lessequals(c_PropLog_Ohyps(V_p,c_minus(V_t,c_insert(V_v,c_emptyset,T_a),tc_set(T_a)),T_a),c_insert(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Ovar(V_v,T_a),c_PropLog_Opl_Ofalse,T_a),c_minus(c_PropLog_Ohyps(V_p,V_t,T_a),c_insert(c_PropLog_Opl_Ovar(V_v,T_a),c_emptyset,tc_PropLog_Opl(T_a)),tc_set(tc_PropLog_Opl(T_a))),tc_PropLog_Opl(T_a)),tc_set(tc_PropLog_Opl(T_a))) )).

cnf(cls_PropLog_Oinsert__Diff__same_0,axiom,
    ( c_lessequals(c_minus(V_B,V_C,tc_set(T_a)),c_insert(V_a,c_minus(V_B,c_insert(V_a,V_C,T_a),tc_set(T_a)),T_a),tc_set(T_a)) )).

cnf(cls_PropLog_Oinsert__Diff__subset2_0,axiom,
    ( c_lessequals(c_minus(c_insert(V_a,c_minus(V_B,c_insert(V_c,c_emptyset,T_a),tc_set(T_a)),T_a),V_D,tc_set(T_a)),c_insert(V_a,c_minus(V_B,c_insert(V_c,V_D,T_a),tc_set(T_a)),T_a),tc_set(T_a)) )).

cnf(cls_PropLog_Othms__excluded__middle__rule_0,axiom,
    ( ~ c_in(V_q,c_PropLog_Othms(c_insert(V_p,V_H,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a))
    | ~ c_in(V_q,c_PropLog_Othms(c_insert(c_PropLog_Opl_Oop_A_N_62(V_p,c_PropLog_Opl_Ofalse,T_a),V_H,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a))
    | c_in(V_q,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Oweaken__left_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_G,T_a),tc_PropLog_Opl(T_a))
    | ~ c_lessequals(V_G,V_H,tc_set(tc_PropLog_Opl(T_a)))
    | c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_conjecture_3,negated_conjecture,
    ( c_in(v_p,c_PropLog_Othms(c_minus(c_PropLog_Ohyps(v_p,V_U,t_a),v_F,tc_set(tc_PropLog_Opl(t_a))),t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_5,negated_conjecture,
    ( ~ c_in(v_p,c_PropLog_Othms(c_minus(c_PropLog_Ohyps(v_p,v_t,t_a),c_insert(c_PropLog_Opl_Ovar(v_v,t_a),v_F,tc_PropLog_Opl(t_a)),tc_set(tc_PropLog_Opl(t_a))),t_a),tc_PropLog_Opl(t_a)) )).

%------------------------------------------------------------------------------
