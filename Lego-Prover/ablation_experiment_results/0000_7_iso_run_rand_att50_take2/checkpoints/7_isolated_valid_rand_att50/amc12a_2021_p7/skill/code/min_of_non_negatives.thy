lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + b" by simp
  then show ?thesis using assms by (simp add: add_nonneg_nonneg)
qed