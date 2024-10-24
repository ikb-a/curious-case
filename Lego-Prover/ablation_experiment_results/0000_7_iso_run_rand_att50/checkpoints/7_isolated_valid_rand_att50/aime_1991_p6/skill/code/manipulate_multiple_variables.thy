lemma manipulate_multiple_variables:
  fixes x1 x2 a1 a2 b1 b2 c1 c2 :: "'a::field"
  assumes "x1 \<noteq> 0" "x2 \<noteq> 0" "a1 + b1 / x1 = c1" "a2 + b2 / x2 = c2"
  shows "c1 * x1 - b1 = a1 * x1" and "c2 * x2 - b2 = a2 * x2"
proof -
  have "c1 * x1 = a1 * x1 + b1" using assms(3) by (metis add.commute add_cancel_left_left add_cancel_right_left add_cancel_right_right add_divide_eq_if_simps(2) add_eq_0_iff add_num_frac add_scale_eq_noteq assms(1) crossproduct_eq divide_cancel_right divide_divide_eq_right divide_eq_0_iff divide_eq_1_iff divide_eq_eq group_cancel.add2 mult.commute mult.left_commute mult_cancel_right1 mult_delta_left mult_delta_right neg_eq_iff_add_eq_0 one_eq_divide_iff times_divide_eq_left times_divide_eq_right)
  then show "c1 * x1 - b1 = a1 * x1" by simp
  have "c2 * x2 = a2 * x2 + b2" using assms(4) by (metis ab_group_add_class.ab_diff_conv_add_uminus add.commute add_cancel_right_left add_cancel_right_right add_divide_eq_if_simps(2) add_frac_eq add_scale_eq_noteq assms(2) crossproduct_eq diff_0 diff_divide_distrib diff_eq_diff_eq diff_minus_eq_add diff_zero div_by_1 divide_cancel_left divide_cancel_right divide_eq_0_iff divide_eq_1_iff divide_eq_minus_1_iff eq_divide_eq eq_iff_diff_eq_0 frac_eq_eq group_cancel.sub1 left_diff_distrib' minus_diff_eq minus_divide_right mult.commute mult.left_commute mult_cancel_left2 mult_cancel_right1 mult_cancel_right2 mult_delta_left mult_delta_right mult_minus1_right mult_minus_right right_inverse_eq square_eq_1_iff times_divide_times_eq uminus_add_conv_diff zero_neq_one)
  thus "c2 * x2 - b2 = a2 * x2" by simp
qed