lemma sqrt_limit_alternative:
  fixes x :: real
  assumes "9 = sqrt(x + 9)"
  shows "x = 72"
proof -
  have "9^2 = x + 9" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  thus "x = 72" by (simp add: power2_eq_square)
qed