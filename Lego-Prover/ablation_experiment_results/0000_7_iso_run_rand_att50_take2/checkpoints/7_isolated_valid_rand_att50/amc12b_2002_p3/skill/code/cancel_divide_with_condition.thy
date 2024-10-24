lemma cancel_divide_with_condition:
  fixes x a b c :: real
  assumes "x > 0" "b > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(3) by auto
  then have "x * a + b = c * x" by (smt (verit) add_divide_eq_if_simps(1) assms(1) assms(3) mult.commute nonzero_eq_divide_eq order_less_imp_not_eq2)
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed