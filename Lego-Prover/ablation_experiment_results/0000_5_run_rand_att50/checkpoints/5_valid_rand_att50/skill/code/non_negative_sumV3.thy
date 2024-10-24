lemma non_negative_sum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c >= 0"
proof -
  have "a + b + c = (a + b) + c" by simp
  moreover have "a + b >= 0"
  proof -
    have "a + b = a + b" by simp
    moreover have "a >= 0" using assms(1) by simp
    moreover have "b >= 0" using assms(2) by simp
    ultimately show "a + b >= 0" by (metis add_nonneg_nonneg)
  qed
  moreover have "c >= 0" using assms(3) by simp
  ultimately show ?thesis 
    using add_nonneg_nonneg by blast
qed