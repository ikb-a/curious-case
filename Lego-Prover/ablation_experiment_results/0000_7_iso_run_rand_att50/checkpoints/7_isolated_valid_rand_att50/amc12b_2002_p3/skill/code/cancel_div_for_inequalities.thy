lemma cancel_div_for_inequalities:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x < c" "d = a" "e = b"
  shows "d * x + e < c * x"
proof -
  have "x * (a + b / x) < c * x" using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + x * (b / x) < c * x" by (simp add: distrib_left)
  then show ?thesis using assms(1) by (metis add.commute assms(2) assms(3) assms(4) distrib_left divide_add_eq_iff less_numeral_extra(3) mult_eq_0_iff pos_divide_less_eq)
qed