lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  from assms have "a >= 0" by simp
  thus ?thesis by (metis assms real_sqrt_gt_zero)
qed