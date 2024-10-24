lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "0 <= a" using assms(1) by simp
  have "0 <= b" using assms(2) by simp
  then have "0 + 0 <= a + b" by (metis add_0_iff add_nonneg_nonneg assms(1))
  thus "a + b >= 0" by simp
qed