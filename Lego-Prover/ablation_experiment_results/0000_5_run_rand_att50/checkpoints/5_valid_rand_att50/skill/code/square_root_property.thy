lemma square_root_property:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"
proof -
  have "a^2 = (sqrt b)^2" using assms(1) by simp
  then show ?thesis by (metis assms(2) power2_eq_iff_nonneg real_sqrt_eq_iff real_sqrt_power real_sqrt_unique zero_le_power2)
qed