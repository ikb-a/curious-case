lemma non_negative_sum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c >= 0"
proof -
  have "a + b + c = (a + b) + c" by auto
  moreover have "a + b >= 0" 
  proof -
    have "a + b = a + b" by simp
    then have "a + b >= 0 + 0" using assms(1) assms(2) 
      by (simp add: add_nonneg_nonneg)
    thus ?thesis by simp
  qed
  moreover have "c >= 0" using assms(3) by simp
  ultimately show ?thesis 
    by (metis add_nonneg_nonneg)
qed