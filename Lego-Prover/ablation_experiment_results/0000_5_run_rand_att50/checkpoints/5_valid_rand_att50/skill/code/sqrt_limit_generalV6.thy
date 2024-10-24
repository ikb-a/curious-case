lemma sqrt_limit_general:
  fixes x :: real and c :: real
  assumes "c > 0" and "c = sqrt(x + c)"
  shows "x = c^2 - c"
proof -
  have "c^2 = x + c" using assms by (metis add.commute real_sqrt_ge_0_iff real_sqrt_ge_zero real_sqrt_gt_0_iff real_sqrt_pow2 verit_comp_simplify1(3) zero_le_mult_iff zero_le_square)
  have "x = c^2 - c" by (metis \<open>c\<^sup>2 = x + c\<close> add_diff_cancel semiring_norm(3) semiring_norm(5))
  thus ?thesis by auto
qed