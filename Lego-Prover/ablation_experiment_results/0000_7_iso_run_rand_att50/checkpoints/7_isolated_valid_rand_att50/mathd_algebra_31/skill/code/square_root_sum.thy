lemma square_root_sum:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
proof -
  have "sqrt (a + b) ^ 2 = a + b" by (metis add_nonneg_nonneg assms(1) assms(2) real_sqrt_pow2)
  also have "... \<le> (sqrt a + sqrt b) ^ 2" 
    using assms by (metis sqrt_add_le_add_sqrt sqrt_le_D)
  finally show ?thesis by (metis assms(1) assms(2) sqrt_add_le_add_sqrt)
qed