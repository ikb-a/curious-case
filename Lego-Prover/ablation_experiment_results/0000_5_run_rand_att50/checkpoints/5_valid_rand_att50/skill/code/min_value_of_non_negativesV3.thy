lemma min_value_of_non_negatives:
  fixes a b c :: real
  assumes "a \<ge> 0" and "b \<ge> 0" and "c \<ge> 0"
  shows "a + b + c \<ge> 0"
proof -
  have "a + b + c = (a + b) + c" by (simp add: add.assoc)
  moreover have "a + b \<ge> 0" 
  proof -
    have "a \<ge> 0" using assms(1) by simp
    have "b \<ge> 0" using assms(2) by simp
    then show "a + b \<ge> 0" by (metis add_nonneg_nonneg assms(1))
  qed
  moreover have "c \<ge> 0" using assms(3) by simp
  ultimately show ?thesis 
    by (metis add_nonneg_nonneg)
qed