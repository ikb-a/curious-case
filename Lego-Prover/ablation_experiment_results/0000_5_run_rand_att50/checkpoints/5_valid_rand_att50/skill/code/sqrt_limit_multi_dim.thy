lemma sqrt_limit_multi_dim:
  fixes x :: real
  assumes "n > 0" "n = sqrt(x + n)"
  shows "x = n^2 - n"
proof -
  have "n^2 = x + n" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then show ?thesis by auto
qed