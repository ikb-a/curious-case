lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  from assms have "a >= 0" by simp
  from assms have "b >= 0" by simp
  thus "a + b >= 0" by (metis add_nonneg_nonneg assms(1))
qed