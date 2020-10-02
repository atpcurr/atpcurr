%------------------------------------------------------------------------------
% File     : LCL432-2 : TPTP v7.3.0. Released v3.2.0.
% Domain   : Logic Calculi (Propositional)
% Problem  : Problem about propositional logic
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.4.0, 0.06 v5.3.0, 0.10 v5.2.0, 0.00 v3.2.0
% Syntax   : Number of clauses     :    3 (   0 non-Horn;   2 unit;   3 RR)
%            Number of atoms       :    4 (   0 equality)
%            Maximal clause size   :    2 (   1 average)
%            Number of predicates  :    2 (   0 propositional; 3-3 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :    2 (   0 singleton)
%            Maximal term depth    :    2 (   1 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_0,negated_conjecture,
    ( c_PropLog_Osat(c_emptyset,v_x,t_a) )).

cnf(cls_conjecture_1,negated_conjecture,
    ( ~ c_in(v_x,c_PropLog_Othms(c_emptyset,t_a),tc_PropLog_Opl(t_a)) )).

cnf(cls_PropLog_Ocompleteness__0_0,axiom,
    ( ~ c_PropLog_Osat(c_emptyset,V_p,T_a)
    | c_in(V_p,c_PropLog_Othms(c_emptyset,T_a),tc_PropLog_Opl(T_a)) )).

%------------------------------------------------------------------------------
