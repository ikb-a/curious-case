lemma min_of_non_negatives_generalized:
  fixes x y :: real
  assumes "x >= 0" and "y >= 0"
  shows "min x y >= 0"
proof -
  have "min x y = min x y" by simp
  then show ?thesis using assms by (metis min_def)
qed