lemma simplify_rational:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have "a / b + c / d = a / b + (c * b) / (b * d)" 
    by (metis add.commute add_cancel_left_left assms(1) divide_cancel_left divide_divide_eq_left' equation_minus_iff group_cancel.neg1 mult.commute neg_equal_0_iff_equal neg_equal_iff_equal nonzero_divide_eq_eq times_divide_eq_left times_divide_eq_right times_divide_times_eq zero_neq_one)
  then have "a / b + (c * b) / (b * d) = (a * d) / (b * d) + (c * b) / (b * d)"
    by (metis assms(2) div_self mult.commute mult_cancel_right2 times_divide_times_eq)
  then have "a / b + (c * b) / (b * d) = (a * d + c * b) / (b * d)"
    by (smt (verit) \<open>a / b + c / d = a / b + c * b / (b * d)\<close> add_frac_eq assms(1) assms(2))
  thus ?thesis
    by (metis \<open>a / b + c / d = a / b + c * b / (b * d)\<close> add.commute add_cancel_left_left add_frac_eq assms(1) assms(2) divide_eq_0_iff double_zero_sym frac_eq_eq mult.commute mult.left_commute mult_eq_0_iff nonzero_mult_divide_mult_cancel_right2 times_divide_eq_left)
qed