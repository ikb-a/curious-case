lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  have "a >= 0" using assms(1) by simp
  have "b >= 0" using assms(2) by simp
  have "a + b >= 0 + 0" 
    using `a >= 0` `b >= 0` by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed