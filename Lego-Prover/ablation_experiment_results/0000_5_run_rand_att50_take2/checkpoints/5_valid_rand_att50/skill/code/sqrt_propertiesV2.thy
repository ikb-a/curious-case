lemma sqrt_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt (a + b) \<le> sqrt a + sqrt b"
proof -
  have "sqrt (a + b) ^ 2 = a + b" using assms(1) assms(2) by (simp add: sqrt_def)
  have "sqrt a ^ 2 = a" using assms(1) by (simp add: sqrt_def)
  have "sqrt b ^ 2 = b" using assms(2) by (simp add: sqrt_def)
  have "sqrt (a + b) ^ 2 \<le> (sqrt a + sqrt b) ^ 2"
    by (metis \<open>(sqrt (a + b))\<^sup>2 = a + b\<close> assms(1) assms(2) sqrt_add_le_add_sqrt sqrt_le_D)
  then have "a + b \<le> (sqrt a + sqrt b) ^ 2" 
    using `sqrt (a + b) ^ 2 = a + b` by simp
  then show ?thesis 
    using `sqrt a ^ 2 = a` `sqrt b ^ 2 = b` by (metis assms(1) assms(2) sqrt_add_le_add_sqrt)
qed