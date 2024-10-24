lemma cancel_divide_with_negativity_special:
  fixes a b c :: real
  assumes "a + b / d = c" "b < 0" "d > 0"
  shows "a * d + b = c * d"
proof -
  have "d * (a + b / d) = c * d" using assms(1) by auto
  then have "d * a + b = c * d" by (smt (verit) add_divide_eq_if_simps(1) assms(2) assms(3) mult.commute nonzero_eq_divide_eq)
  thus ?thesis using assms(3) by (simp add: mult.commute)
qed