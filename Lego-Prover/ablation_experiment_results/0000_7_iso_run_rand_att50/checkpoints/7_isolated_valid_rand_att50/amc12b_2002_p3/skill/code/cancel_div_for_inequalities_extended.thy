lemma cancel_div_for_inequalities_extended:
  fixes x a b c d e :: real
  assumes "x > 0" "a + b / x < c" "d = a" "e = b"
  shows "d * x + e < c * x"
proof -
  have "x * (a + b / x) < c * x" using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + x * (b / x) < c * x" by (simp add: distrib_left)
  then have "x * a + b < c * x" using assms(1) by auto
  then show ?thesis using assms(3) assms(4) by sos
qed