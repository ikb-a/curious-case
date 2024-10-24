lemma cancel_div_for_inequalities_generalized:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x < c"
  shows "a * x + b < c * x"
proof -
  have "x * (a + b / x) < c * x" using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + (b) < c * x" by sos
  then show ?thesis by (metis add.commute add_frac_num assms(1) assms(2) distrib_left less_numeral_extra(3) mult_eq_0_iff pos_divide_less_eq)
qed