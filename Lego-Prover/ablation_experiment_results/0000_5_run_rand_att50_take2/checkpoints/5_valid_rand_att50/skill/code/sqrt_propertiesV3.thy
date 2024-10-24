lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
proof -
  have "sqrt (a + b) ^ 2 = a + b" using assms(1) assms(2) by (simp add: sqrt_def)
  have "sqrt a ^ 2 = a" using assms(1) by (simp add: sqrt_def)
  have "sqrt b ^ 2 = b" using assms(2) by (simp add: sqrt_def)
  have "sqrt a + sqrt b \<ge> 0" using assms(1) assms(2) by auto
  have "(sqrt a + sqrt b) ^ 2 = sqrt a ^ 2 + 2 * sqrt a * sqrt b + sqrt b ^ 2"
    by (smt (verit) power2_sum)
  also have "... = a + 2 * sqrt a * sqrt b + b" 
    by (simp add: `sqrt a ^ 2 = a` `sqrt b ^ 2 = b`)
  finally have "sqrt (a + b) ^ 2 \<le> (sqrt a + sqrt b) ^ 2" 
    using `sqrt (a + b) ^ 2 = a + b` 
    by (metis assms(1) assms(2) power2_eq_square real_sqrt_power sqrt_add_le_add_sqrt sqrt_le_D)
  thus ?thesis using `sqrt (a + b) ^ 2 = a + b` by (metis assms(1) assms(2) sqrt_add_le_add_sqrt)
qed