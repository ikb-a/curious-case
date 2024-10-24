lemma simplify_sqrt_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt a / b = sqrt (a / (b^2))"
proof -
  have "b^2 > 0" using assms(2) by (simp add: power2_eq_square)
  hence "sqrt (b^2) = b" by (metis assms(2) less_eq_real_def real_sqrt_unique)
  have "sqrt a / b = sqrt a * (1 / b)" by (simp add: field_split_simps)
  also have "... = sqrt a * sqrt (1 / (b^2))" by (metis \<open>sqrt (b\<^sup>2) = b\<close> calculation one_add_one power2_eq_square real_sqrt_divide real_sqrt_one)
  finally show ?thesis using `b^2 > 0` by (metis \<open>sqrt (b\<^sup>2) = b\<close> divide_cancel_left divide_divide_eq_left divide_divide_times_eq divide_eq_0_iff divide_eq_eq_numeral1(1) mult.commute mult_cancel_left1 mult_cancel_right1 mult_delta_right mult_left_cancel one_eq_divide_iff power2_eq_square real_sqrt_divide real_sqrt_eq_iff real_sqrt_eq_zero_cancel_iff times_divide_eq_left times_divide_eq_right zero_neq_numeral zero_neq_one)
qed