lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a = sqrt a" by simp
  then show "sqrt a > 0" using assms by (simp add: real_sqrt_gt_0_iff)
qed