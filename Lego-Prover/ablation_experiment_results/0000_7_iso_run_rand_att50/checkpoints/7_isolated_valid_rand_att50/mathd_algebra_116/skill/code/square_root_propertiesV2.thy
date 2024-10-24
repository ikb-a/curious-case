lemma square_root_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) + sqrt(b) = sqrt(a + b + 2*sqrt(a*b))"
proof -
  have "sqrt(a) + sqrt(b) = sqrt((sqrt(a) + sqrt(b))^2)" 
    by (metis add_nonneg_nonneg assms(1) assms(2) real_sqrt_ge_zero real_sqrt_unique)
  also have "... = sqrt(a + b + 2*sqrt(a)*sqrt(b))" 
    by (smt (verit) assms(1) assms(2) power2_sum real_sqrt_eq_iff real_sqrt_pow2_iff)
  also have "... = sqrt(a + b + 2*sqrt(a*b))"
    using assms by (simp add: real_sqrt_mult)
  finally show ?thesis by simp
qed