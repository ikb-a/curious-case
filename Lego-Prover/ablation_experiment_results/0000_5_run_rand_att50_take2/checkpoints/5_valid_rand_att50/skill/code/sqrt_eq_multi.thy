lemma sqrt_eq_multi:
  fixes x :: real
  assumes "sqrt (x + n) = n" 
      and "n > 0"
  shows "x = n^2 - n"
proof -
  have "x + n = n^2" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  then have "x = n^2 - n" by simp
  thus ?thesis by simp
qed