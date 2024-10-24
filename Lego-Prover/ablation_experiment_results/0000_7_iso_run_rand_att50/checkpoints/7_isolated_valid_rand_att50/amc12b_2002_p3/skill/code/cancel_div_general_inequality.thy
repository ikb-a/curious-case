lemma cancel_div_general_inequality:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x < c"
  shows "a * x + b < c * x"
proof -
  have "x * (a + b / x) < c * x"
    using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + x * (b / x) < c * x"
    by (simp add: distrib_left)
  then show ?thesis
    using assms(1) by (simp add: mult.commute)
qed