lemma nonneg_sum:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "a + b \<ge> 0"
proof -
  have "a + b = a + b" by simp
  also have "... \<ge> 0 + 0" using assms by auto
  finally show ?thesis by (metis add_nonneg_nonneg assms(1) assms(2))
qed