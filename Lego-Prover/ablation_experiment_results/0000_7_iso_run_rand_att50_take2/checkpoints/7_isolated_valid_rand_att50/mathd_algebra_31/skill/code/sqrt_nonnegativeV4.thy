lemma sqrt_nonnegative:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a = 0 \<or> sqrt a > 0" by (metis assms order.strict_iff_order real_sqrt_gt_zero real_sqrt_zero)
  thus ?thesis by auto
qed