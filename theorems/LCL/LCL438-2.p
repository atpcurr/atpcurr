%------------------------------------------------------------------------------
% File     : LCL438-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   4 unit;   4 RR)
%            Number of atoms       :    7 (   0 equality)
%            Maximal clause size   :    3 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    8 (   5 constant; 0-3 arity)
%            Number of variables   :    9 (   1 singleton)
%            Maximal term depth    :    4 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_1,negated_conjecture,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(v_p,c_PropLog_Opl_Oop_A_N_62(v_pa,v_q,t_a),t_a),c_PropLog_Othms(v_H,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_3,negated_conjecture,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(v_p,v_pa,t_a),c_PropLog_Othms(v_H,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_4,negated_conjecture,
    ( ~ c_in(c_PropLog_Opl_Oop_A_N_62(v_p,v_q,t_a),c_PropLog_Othms(v_H,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_PropLog_Othms_OMP_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(V_q,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms_OS_0,axiom,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,c_PropLog_Opl_Oop_A_N_62(V_q,V_r,T_a),T_a),c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Opl_Oop_A_N_62(V_p,V_r,T_a),T_a),T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

%------------------------------------------------------------------------------
