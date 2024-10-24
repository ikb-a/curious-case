lemma rational_expression_simplification:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have "a / b + c / d = (a * d) / (b * d) + (c * b) / (b * d)"
    by (simp add: assms(1) assms(2) field_simps)
  then have "(a * d) / (b * d) + (c * b) / (b * d) = (a * d + c * b) / (b * d)"
    by (metis add_divide_distrib)
  thus ?thesis by (metis \<open>a / b + c / d = a * d / (b * d) + c * b / (b * d)\<close> add.commute assms(2) div_by_1 divide_cancel_right divide_divide_eq_left' divide_divide_times_eq frac_eq_eq group_cancel.add1 minus_divide_left mult.commute mult_cancel_right2 real_add_minus_iff right_inverse_eq times_divide_times_eq zero_neq_one)
qed