lemma sqrt_difference:
  fixes x y :: real
  assumes "sqrt (x + 9) = 9" "sqrt (y + 9) = 9"
  shows "x = y"
proof -
  obtain a where "x + 9 = a^2" and "y + 9 = a^2" using assms by (metis abs_of_nonneg add.commute real_sqrt_abs real_sqrt_eq_iff real_sqrt_ge_0_iff real_sqrt_power zero_le_numeral)
  then show "x = y" by (simp add: field_simps)
qed