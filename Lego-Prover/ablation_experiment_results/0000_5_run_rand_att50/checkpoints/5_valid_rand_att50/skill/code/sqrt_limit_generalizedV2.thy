lemma sqrt_limit_generalized:
  fixes x :: real
  assumes "k = sqrt(x + k)" "k > 0"
  shows "x = k^2 - k"
proof -
  have "k^2 = x + k" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  hence "x = k^2 - k" by simp
  thus ?thesis by auto
qed