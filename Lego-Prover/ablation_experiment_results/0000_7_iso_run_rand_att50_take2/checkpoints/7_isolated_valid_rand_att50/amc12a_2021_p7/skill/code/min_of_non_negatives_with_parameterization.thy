lemma min_of_non_negatives_with_parameterization:
  fixes a b c :: real
  assumes "a >= 0" and "b >= 0" and "c = a + b"
  shows "c >= 0"
proof -
  have "c = a + b" using assms(3) by simp
  then show ?thesis using assms by (simp add: add_nonneg_nonneg)
qed