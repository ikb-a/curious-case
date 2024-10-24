lemma cancel_divide_with_negativity:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c" "b < 0"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + b = c * x" by (smt (verit) add_divide_eq_if_simps(1) assms(1) assms(2) mult.commute nonzero_eq_divide_eq)
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed