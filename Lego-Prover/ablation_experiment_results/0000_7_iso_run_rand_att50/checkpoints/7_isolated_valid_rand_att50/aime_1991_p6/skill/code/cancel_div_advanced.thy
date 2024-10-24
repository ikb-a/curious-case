lemma cancel_div_advanced:
  fixes x a b c d :: "'a::field"
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x = a * x + b" using assms(2) by (metis add.commute add_cancel_right_left add_cancel_right_right add_divide_eq_if_simps(2) add_right_imp_eq add_scale_eq_noteq assms(1) comm_monoid_add_class.add_0 crossproduct_eq divide_cancel_left divide_cancel_right divide_divide_eq_right divide_divide_times_eq divide_eq_0_iff eq_divide_eq frac_eq_eq group_cancel.add1 group_cancel.add2 mult.assoc mult.commute mult.left_commute mult_delta_left mult_delta_right mult_left_cancel mult_right_cancel times_divide_eq_left)
  then show ?thesis by simp
qed