lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  from assms(1) and assms(2) show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed