lemma sum_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + b" by simp
  moreover have "a >= 0" using assms(1) by simp
  moreover have "b >= 0" using assms(2) by simp
  ultimately show ?thesis
    by (metis add_nonneg_nonneg)
qed