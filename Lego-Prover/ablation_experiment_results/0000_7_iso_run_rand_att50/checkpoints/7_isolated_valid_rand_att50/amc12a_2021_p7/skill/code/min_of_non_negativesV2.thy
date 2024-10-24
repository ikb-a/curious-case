lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b = a + 0 + b" by auto
  also have "... = (a + 0) + b" by (simp add: add.assoc)
  also have "... >= 0 + 0" using assms by (simp add: add_nonneg_nonneg)
  finally show ?thesis by (metis add_nonneg_nonneg assms(1) assms(2))
qed