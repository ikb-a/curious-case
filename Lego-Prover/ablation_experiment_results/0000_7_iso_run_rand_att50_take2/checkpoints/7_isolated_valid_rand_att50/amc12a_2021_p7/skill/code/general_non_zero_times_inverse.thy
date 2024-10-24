lemma general_non_zero_times_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  by (metis add.commute add_cancel_left_right add_cancel_right_left add_scale_eq_noteq assms crossproduct_eq div_by_1 divide_cancel_right divide_divide_eq_left divide_divide_eq_right divide_eq_0_iff divide_eq_eq divide_eq_eq_1 mult.commute mult_cancel_right2 mult_delta_left non_zero_times_inverse nonzero_divide_mult_cancel_right times_divide_eq_right zero_neq_one)