lemma square_root_positive:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt a + sqrt b = sqrt (a + b + 2 * sqrt (a * b))"
proof -
  have "sqrt a + sqrt b = sqrt (sqrt a ^ 2) + sqrt (sqrt b ^ 2)" by (metis abs_of_nonneg assms(1) assms(2) one_add_one power2_eq_square real_sqrt_abs2 real_sqrt_mult_self)
  also have "... = sqrt (sqrt a ^ 2 + sqrt b ^ 2 + 2 * sqrt a * sqrt b)" 
    by (metis add_nonneg_nonneg assms(1) assms(2) calculation power2_sum real_sqrt_ge_zero real_sqrt_unique)
  finally have "sqrt a + sqrt b = sqrt ((sqrt a + sqrt b) ^ 2)" by (metis abs_of_nonneg add_nonneg_nonneg assms(1) assms(2) real_sqrt_abs real_sqrt_ge_zero)
  then have "sqrt a + sqrt b = sqrt (a + b + 2 * sqrt (a * b))" 
    using assms by (metis \<open>sqrt ((sqrt a)\<^sup>2) + sqrt ((sqrt b)\<^sup>2) = sqrt ((sqrt a)\<^sup>2 + (sqrt b)\<^sup>2 + 2 * sqrt a * sqrt b)\<close> \<open>sqrt a + sqrt b = sqrt ((sqrt a)\<^sup>2) + sqrt ((sqrt b)\<^sup>2)\<close> add.commute add.left_commute add_left_cancel add_right_cancel is_num_normalize(1) mult.commute mult.left_commute power2_eq_square real_sqrt_eq_iff real_sqrt_mult real_sqrt_pow2_iff real_sqrt_power)
  thus ?thesis by simp
qed