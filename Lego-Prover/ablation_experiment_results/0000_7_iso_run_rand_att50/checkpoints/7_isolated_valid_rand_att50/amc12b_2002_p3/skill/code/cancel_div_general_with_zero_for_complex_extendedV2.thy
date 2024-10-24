lemma cancel_div_general_with_zero_for_complex_extended:
  fixes x y a b c d :: complex
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c" "a + b / y = d"
  shows "a * x + b = c * x \<and> a * y + b = d * y"
proof -
  have "x * (a + b / x) = c * x" using assms(3) by (metis assms(2) mult.commute)
  then have "x * a + b = c * x" by (metis add.commute add_0_iff add_cancel_left_right add_cancel_right_left add_divide_eq_if_simps(2) add_right_imp_eq add_scale_eq_noteq assms(1) assms(3) comm_monoid_add_class.add_0 crossproduct_eq divide_cancel_left divide_cancel_right divide_divide_eq_left divide_divide_eq_right divide_divide_times_eq divide_eq_0_iff eq_divide_eq frac_eq_eq mult.commute mult.left_commute mult_cancel_left mult_delta_left mult_delta_right mult_left_cancel mult_right_cancel times_divide_eq_left)
  have "y * (a + b / y) = d * y" using assms(4) by auto
  then have "y * a + b = d * y" by (smt (verit) add_divide_eq_iff assms(2) assms(4) mult.commute nonzero_eq_divide_eq)
  thus ?thesis using assms(1) by (smt (verit) \<open>x * (a + b / x) = c * x\<close> \<open>x * a + b = c * x\<close> add_cancel_left_right add_divide_eq_iff assms(2) assms(4) divide_cancel_right divide_eq_0_iff eq_divide_imp mult.commute no_zero_divisors nonzero_eq_divide_eq nonzero_mult_divide_mult_cancel_left nonzero_mult_divide_mult_cancel_right2 times_divide_eq_right)
qed