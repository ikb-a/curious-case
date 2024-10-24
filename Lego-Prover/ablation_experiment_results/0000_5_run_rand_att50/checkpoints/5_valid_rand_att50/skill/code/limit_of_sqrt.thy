lemma limit_of_sqrt:
  fixes x :: real
  assumes "9 = sqrt(x + 9)"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then have "81 = x + 9" by (simp add: power2_eq_square)
  then have "x = 81 - 9" by (simp add: add_diff_cancel)
  then show ?thesis by auto
qed