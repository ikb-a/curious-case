lemma sqrt_eq_generalized:
  fixes x a :: real
  assumes "sqrt (x + a) = a" and "a > 0"
  shows "x = a^2 - a"
proof -
  have "x + a = a^2" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then show "x = a^2 - a" by simp
qed