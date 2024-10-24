lemma additional_condition_x_y:
  fixes x y :: real
  assumes "x * y = 2"
  shows "x + 2/x = y + 2/y"
proof -
  have "y + 2 / y = x + 2 / x" using assms by (metis add.commute add_scale_eq_noteq divide_eq_0_iff mult.commute mult_cancel_left2 mult_cancel_right1 mult_delta_left nonzero_mult_div_cancel_left one_add_one right_inverse_eq times_divide_eq_left times_divide_eq_right zero_neq_numeral zero_neq_one)
  thus ?thesis by simp
qed