lemma cancel_div_inequality:
  fixes a b c x :: real
  assumes "x > 0" "a + b / x < c"
  shows "a * x + b < c * x"
proof -
  have "x * (a + b / x) < c * x"
    using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + b < c * x"
    by sos
  then show ?thesis by sos
qed