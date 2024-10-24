lemma sqrt_square_relation:
  fixes x :: real
  assumes "sqrt y = z" and "y >= 0"
  shows "y = z^2"
proof -
  have "y = z^2" using assms(1) by (metis assms(2) power2_eq_iff_nonneg real_sqrt_eq_iff real_sqrt_power real_sqrt_unique zero_le_power2)
  then show ?thesis by simp
qed