lemma sqrt_eq_generalized:
  fixes x :: real and c :: real
  assumes "c > 0" and "sqrt (x + c) = c"
  shows "x = c^2 - c"
proof -
  have "x + c = c^2" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then have "x = c^2 - c" by simp
  thus ?thesis by simp
qed