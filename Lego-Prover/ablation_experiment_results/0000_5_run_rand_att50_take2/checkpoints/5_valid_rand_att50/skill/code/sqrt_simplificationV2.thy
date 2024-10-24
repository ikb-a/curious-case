lemma sqrt_simplification:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) + sqrt(b) = sqrt(a + b + 2*sqrt(a*b))"
proof -
  have "sqrt(a) + sqrt(b) \<ge> 0" using assms by auto
  hence "sqrt(a + b + 2 * sqrt(a * b)) \<ge> 0" 
    using assms by auto
  then have "sqrt(a) + sqrt(b) = sqrt((sqrt(a) + sqrt(b))^2)" 
    by (metis \<open>0 \<le> sqrt a + sqrt b\<close> real_sqrt_unique)
  have "(sqrt(a) + sqrt(b))^2 = a + b + 2 * sqrt(a) * sqrt(b)" 
    by (smt (verit) assms(1) assms(2) power2_sum real_sqrt_pow2_iff)
  also have "... = a + b + 2 * sqrt(a * b)" 
    by (metis calculation is_num_normalize(1) mult.commute mult.left_commute real_sqrt_mult)
  finally have "sqrt(a + b + 2 * sqrt(a * b)) = sqrt((sqrt(a) + sqrt(b))^2)" 
    using `sqrt(a) + sqrt(b) \<ge> 0` by (metis power2_eq_square)
  thus ?thesis 
    using `sqrt(a) + sqrt(b) = sqrt((sqrt(a) + sqrt(b))^2)` by simp
qed