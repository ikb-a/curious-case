lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  have "a >= 0" using assms(1) by assumption
  have "b >= 0" using assms(2) by assumption
  then show ?thesis 
    using add_nonneg_nonneg[of a b] by (metis assms(1))
qed