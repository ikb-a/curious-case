lemma cross_multiply_nonzero:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0" and "a / b = c / d"
  shows "a * d = b * c"
proof -
  have "a * d = (c / d) * d * b" using assms by (simp add: field_simps)
  also have "... = c * b" by (metis assms(1) assms(2) divide_divide_eq_left' divide_eq_0_iff frac_eq_eq mult.commute mult.left_commute nonzero_divide_eq_eq nonzero_mult_divide_mult_cancel_right times_divide_eq_left times_divide_times_eq)
  finally show ?thesis by simp
qed