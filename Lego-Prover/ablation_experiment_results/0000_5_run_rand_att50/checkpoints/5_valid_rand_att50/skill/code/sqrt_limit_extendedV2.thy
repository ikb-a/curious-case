lemma sqrt_limit_extended:
  fixes x :: real
  assumes "9 = sqrt(x + 9)"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  hence "81 = x + 9" by simp
  thus ?thesis by (simp add: add_diff_cancel)
qed