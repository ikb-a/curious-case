lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<or> sqrt a > 0" by (metis assms order.strict_iff_order real_sqrt_gt_zero real_sqrt_zero)
  then show ?thesis using assms by auto
qed