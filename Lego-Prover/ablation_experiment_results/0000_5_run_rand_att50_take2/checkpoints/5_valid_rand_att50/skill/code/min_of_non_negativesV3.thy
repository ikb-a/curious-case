lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + 0 + b" by (simp add: algebra_simps)
  also have "... >= 0 + 0" using assms by (simp add: field_simps)
  finally show "a + b >= 0" by simp
qed