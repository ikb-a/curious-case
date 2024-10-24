lemma min_of_non_negatives_with_parameterization_generalized:
  fixes a b c :: real
  assumes "a >= 0" and "b >= 0"
  shows "c = a + b \<Longrightarrow> c >= 0"
proof -
  assume "c = a + b"
  then show "c >= 0" using assms by (simp add: add_nonneg_nonneg)
qed