lemma min_value_of_non_negatives:
  fixes a b c :: real
  assumes "a \<ge> 0" and "b \<ge> 0" and "c \<ge> 0"
  shows "a + b + c \<ge> 0"
proof -
  have "a + b + c = (a + b) + c" by auto
  moreover have "a + b \<ge> 0" 
  proof -
    have "a + b = a + b" by simp
    then have "a + b \<ge> 0 + 0" using assms(1) assms(2) 
      by (simp add: add_nonneg_nonneg)
    thus ?thesis by simp
  qed
  moreover have "c \<ge> 0" using assms(3) by simp
  ultimately show ?thesis 
    by (metis add_nonneg_nonneg)
qed