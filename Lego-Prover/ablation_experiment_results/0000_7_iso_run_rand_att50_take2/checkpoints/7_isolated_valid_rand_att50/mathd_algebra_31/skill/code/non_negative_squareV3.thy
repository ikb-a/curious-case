lemma non_negative_square:
  fixes a :: real
  assumes "a >= 0"
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then have "a * a >= 0" using assms by (metis mult_nonneg_nonneg)
  thus "a^2 >= 0" by simp
qed