%------------------------------------------------------------------------------
% File     : LCL440-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.5.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :    2 (   0 non-Horn;   2 unit;   1 RR)
%            Number of atoms       :    2 (   0 equality)
%            Maximal clause size   :    1 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 3-3 arity)
%            Number of functors    :    6 (   3 constant; 0-3 arity)
%            Number of variables   :    3 (   1 singleton)
%            Maximal term depth    :    2 (   2 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_0,negated_conjecture,
    ( ~ c_in(c_PropLog_Opl_Oop_A_N_62(c_PropLog_Opl_Ofalse,c_PropLog_Opl_Ofalse,t_a),c_PropLog_Othms(c_emptyset,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_PropLog_Othms__I_0,axiom,
    ( c_in(c_PropLog_Opl_Oop_A_N_62(V_p,V_p,T_a),c_PropLog_Othms(V_H,T_a),tc_PropLog_Opl(T_a)) )).

%------------------------------------------------------------------------------
