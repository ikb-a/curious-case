lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  have "a >= 0" using assms(1) by simp
  have "b >= 0" using assms(2) by simp
  then show ?thesis 
    by (metis add_nonneg_nonneg assms(1))
qed