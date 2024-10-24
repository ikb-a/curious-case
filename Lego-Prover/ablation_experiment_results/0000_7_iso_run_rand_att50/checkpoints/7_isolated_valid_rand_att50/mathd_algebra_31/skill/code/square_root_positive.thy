lemma square_root_positive:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
  using assms real_sqrt_gt_0_iff by blast