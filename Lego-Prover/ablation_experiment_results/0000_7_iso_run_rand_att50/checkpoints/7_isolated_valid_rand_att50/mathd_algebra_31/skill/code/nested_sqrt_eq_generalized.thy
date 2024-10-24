lemma nested_sqrt_eq_generalized:
  fixes x :: real and k :: real
  assumes "k > 0" "sqrt (x + k) = k"
  shows "x = k^2 - k"
proof -
  have "x + k = k^2" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then show "x = k^2 - k" by simp
qed