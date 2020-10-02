%------------------------------------------------------------------------------
% File     : LCL442-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v7.1.0, 0.17 v7.0.0, 0.25 v6.3.0, 0.14 v6.2.0, 0.00 v5.5.0, 0.12 v5.4.0, 0.10 v5.2.0, 0.00 v5.0.0, 0.07 v4.1.0, 0.00 v4.0.1, 0.20 v4.0.0, 0.29 v3.4.0, 0.25 v3.3.0, 0.33 v3.2.0
% Syntax   : Number of clauses     :   12 (   2 non-Horn;   0 unit;   8 RR)
%            Number of atoms       :   26 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    2 (   0 propositional; 3-3 arity)
%            Number of functors    :   10 (   5 constant; 0-3 arity)
%            Number of variables   :   20 (   4 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_NHN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_0,negated_conjecture,
    ( c_in(v_pl1,c_PropLog_Othms(c_PropLog_Ohyps(v_pl1,v_tt,t_a),t_a),tc_PropLog_Opl(t_a))
    | ~ c_PropLog_Oeval(v_tt,v_pl1,t_a) )).

cnf(cls_conjecture_1,negated_conjecture,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(v_pl1,c_PropLog_Opl_Ofalse,t_a),c_PropLog_Othms(c_PropLog_Ohyps(v_pl1,v_tt,t_a),t_a),tc_PropLog_Opl(t_a))
    | c_PropLog_Oeval(v_tt,v_pl1,t_a) )).

cnf(cls_conjecture_2,negated_conjecture,
    ( c_in(v_pl2,c_PropLog_Othms(c_PropLog_Ohyps(v_pl2,v_tt,t_a),t_a),tc_PropLog_Opl(t_a))
    | ~ c_PropLog_Oeval(v_tt,v_pl2,t_a) )).

cnf(cls_conjecture_3,negated_conjecture,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(v_pl2,c_PropLog_Opl_Ofalse,t_a),c_PropLog_Othms(c_PropLog_Ohyps(v_pl2,v_tt,t_a),t_a),tc_PropLog_Opl(t_a))
    | c_PropLog_Oeval(v_tt,v_pl2,t_a) )).

cnf(cls_conjecture_4,negated_conjecture,
    ( c_PropLog_Oeval(v_tt,v_pl1,t_a)
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(v_pl1,v_pl2,t_a),c_PropLog_Othms(c_union(c_PropLog_Ohyps(v_pl1,v_tt,t_a),c_PropLog_Ohyps(v_pl2,v_tt,t_a),tc_PropLog_Opl(t_a)),t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_5,negated_conjecture,
    ( ~ c_PropLog_Oeval(v_tt,v_pl2,t_a)
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(v_pl1,v_pl2,t_a),c_PropLog_Othms(c_union(c_PropLog_Ohyps(v_pl1,v_tt,t_a),c_PropLog_Ohyps(v_pl2,v_tt,t_a),tc_PropLog_Opl(t_a)),t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_9,negated_conjecture,
    ( ~ c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(v_pl1,v_pl2,t_a),c_PropLog_Opl_Ofalse,t_a),c_PropLog_Othms(c_union(c_PropLog_Ohyps(v_pl1,v_tt,t_a),c_PropLog_Ohyps(v_pl2,v_tt,t_a),tc_PropLog_Opl(t_a)),t_a),tc_PropLog_Opl(t_a))
    | c_PropLog_Oeval(v_tt,v_pl2,t_a)
    | ~ c_PropLog_Oeval(v_tt,v_pl1,t_a) )).

cnf(cls_PropLog_Ofalse__imp_0,axiom,
    ( ~ c_in(c_PropLog_Opl_Oop_A_N_62(V_p,c_PropLog_Opl_Ofalse,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Oimp__false_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(V_q,c_PropLog_Opl_Ofalse,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Opl_Ofalse,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Oweaken__left__Un1_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_G,T_a),tc_PropLog_Opl(T_a))
    | c_in(V_p,c_PropLog_Othms(c_union(V_G,V_B,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Oweaken__left__Un2_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_G,T_a),tc_PropLog_Opl(T_a))
    | c_in(V_p,c_PropLog_Othms(c_union(V_A,V_G,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Oweaken__right_0,axiom,
    ( ~ c_in(V_q,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

%------------------------------------------------------------------------------
