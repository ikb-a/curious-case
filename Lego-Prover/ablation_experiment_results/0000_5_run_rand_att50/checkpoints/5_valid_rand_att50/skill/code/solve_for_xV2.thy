lemma solve_for_x:
  fixes x :: real
  assumes "9 = sqrt (x + 9)"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" by simp
  then have "x = 81 - 9" by (simp add: algebra_simps)
  thus "x = 72" by simp
qed