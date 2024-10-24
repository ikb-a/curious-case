lemma square_root_properties:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) + sqrt(b) = sqrt(a + b + 2*sqrt(a*b))"
proof -
  have "sqrt(a) + sqrt(b) = sqrt(sqrt(a)^2 + sqrt(b)^2 + 2*sqrt(a)*sqrt(b))"
    by (metis add_nonneg_nonneg assms(1) assms(2) power2_sum real_sqrt_ge_zero real_sqrt_unique)
  also have "... = sqrt((sqrt(a) + sqrt(b))^2)"
    by (metis add_nonneg_nonneg assms(1) assms(2) calculation real_sqrt_ge_zero real_sqrt_unique)
  finally show ?thesis
    by (metis \<open>sqrt a + sqrt b = sqrt ((sqrt a)\<^sup>2 + (sqrt b)\<^sup>2 + 2 * sqrt a * sqrt b)\<close> ab_semigroup_mult_class.mult_ac(1) add.left_commute assms(1) assms(2) is_num_normalize(1) real_sqrt_mult real_sqrt_pow2_iff)
qed