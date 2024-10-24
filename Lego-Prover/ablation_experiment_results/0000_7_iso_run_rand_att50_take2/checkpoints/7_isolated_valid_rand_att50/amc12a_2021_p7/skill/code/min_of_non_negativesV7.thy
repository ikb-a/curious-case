lemma min_of_non_negatives:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "a + b >= 0"
proof -
  obtain x where "x = a + b" by auto
  have "x >= 0" 
  proof -
    have "a >= 0" using assms(1) by simp
    have "b >= 0" using assms(2) by simp
    thus ?thesis 
      using add_nonneg_nonneg[of a b] by (metis \<open>x = a + b\<close> assms(1))
  qed
  thus ?thesis by (metis add_nonneg_nonneg assms(1) assms(2))
qed