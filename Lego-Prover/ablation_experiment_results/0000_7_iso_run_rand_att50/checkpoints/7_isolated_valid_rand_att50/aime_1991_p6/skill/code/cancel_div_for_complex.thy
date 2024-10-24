lemma cancel_div_for_complex:
  fixes x a b c :: complex
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + b = c * x" by (metis ab_semigroup_mult_class.mult_ac(1) add.commute add_0_iff add_cancel_left_left add_divide_eq_if_simps(2) add_scale_eq_noteq assms(1) assms(2) crossproduct_eq divide_cancel_left divide_cancel_right divide_divide_eq_right divide_divide_times_eq divide_eq_0_iff divide_eq_eq frac_eq_eq mult.commute mult.left_commute mult_delta_left mult_delta_right mult_left_cancel mult_right_cancel nonzero_mult_divide_mult_cancel_right times_divide_eq_left)
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed