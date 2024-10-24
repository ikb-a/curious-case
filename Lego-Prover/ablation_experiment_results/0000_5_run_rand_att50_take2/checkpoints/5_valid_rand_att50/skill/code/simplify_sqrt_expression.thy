lemma simplify_sqrt_expression:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt a / b = sqrt (a / (b^2))"
proof -
  have "sqrt a / b = sqrt a * (1 / b)" by (simp add: field_simps)
  also have "... = sqrt a * sqrt (1 / (b^2))" using assms by (metis calculation div_by_1 divide_cancel_right divide_divide_eq_left divide_divide_eq_right divide_divide_times_eq divide_eq_eq_numeral1(1) less_eq_real_def mult.commute mult_cancel_left1 mult_cancel_right2 mult_delta_right mult_right_cancel power2_eq_square power_one_over real_sqrt_divide real_sqrt_mult real_sqrt_power real_sqrt_unique zero_neq_numeral zero_neq_one)
  also have "... = sqrt (a * (1 / (b^2)))" by (metis real_sqrt_mult)
  finally show ?thesis by (simp add: field_simps)
qed