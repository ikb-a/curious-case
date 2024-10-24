lemma sqrt_nonneg_squared:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt (a^2) = a"
proof -
  have "a^2 >= 0" using assms by simp
  then have "sqrt (a^2) * sqrt (a^2) = a^2" by (metis power2_eq_square real_sqrt_mult real_sqrt_pow2 real_sqrt_power zero_le_square)
  thus ?thesis using assms by auto
qed