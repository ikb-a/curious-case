lemma sqrt_square:
  fixes x :: real
  assumes "y = sqrt(x)" and "x >= 0"
  shows "y^2 = x"
proof -
  have "y^2 = (sqrt x)^2" using assms by simp
  then show ?thesis by (metis assms(2) power2_eq_iff_nonneg real_sqrt_eq_iff real_sqrt_power real_sqrt_unique zero_le_power2)
qed