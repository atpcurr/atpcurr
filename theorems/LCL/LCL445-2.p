%------------------------------------------------------------------------------
% File     : LCL445-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :    6 (   0 non-Horn;   4 unit;   5 RR)
%            Number of atoms       :    9 (   0 equality)
%            Maximal clause size   :    3 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    9 (   5 constant; 0-3 arity)
%            Number of variables   :   12 (   1 singleton)
%            Maximal term depth    :    5 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_0,negated_conjecture,
    ( c_in(v_q,c_PropLog_Othms(c_insert(v_p,v_H,tc_PropLog_Opl(t_a)),t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_1,negated_conjecture,
    ( c_in(v_q,c_PropLog_Othms(c_insert(c_PropLog_Opl_Oop_A_N_62(v_p,c_PropLog_Opl_Ofalse,t_a),v_H,tc_PropLog_Opl(t_a)),t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_conjecture_2,negated_conjecture,
    ( ~ c_in(v_q,c_PropLog_Othms(v_H,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_PropLog_Odeduction_0,axiom,
    ( ~ c_in(V_q,c_PropLog_Othms(c_insert(V_p,V_H,tc_PropLog_Opl(T_a)),T_a),tc_PropLog_Opl(T_a))
    | c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms_OMP_0,axiom,
    ( ~ c_in(V_p,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | ~ c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a))
    | c_in(V_q,c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

cnf(cls_PropLog_Othms__excluded__middle_0,axiom,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,V_q,T_a),c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Oop_A_N_62(V_p,c_PropLog_Opl_Ofalse,T_a),V_q,T_a),V_q,T_a),T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

%------------------------------------------------------------------------------
