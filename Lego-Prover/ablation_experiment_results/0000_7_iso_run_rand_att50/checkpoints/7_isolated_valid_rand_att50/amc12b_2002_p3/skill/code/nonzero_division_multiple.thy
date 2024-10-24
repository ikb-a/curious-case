lemma nonzero_division_multiple:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall>b. (b / a) * a = b \<and> (2 * b / a) * a = 2 * b"
proof -
  have "b / a * a = b" using nonzero_division_extended[OF assms] by auto
  have "2 * b / a * a = 2 * b" using assms by (metis field_simps)
  then show ?thesis by (metis \<open>b / a * a = b\<close> assms div_by_1 divide_cancel_right divide_divide_eq_left' divide_divide_eq_right divide_divide_times_eq divide_eq_eq divide_self_if eq_divide_eq_1 frac_eq_eq mult.commute mult_cancel_right mult_cancel_right1 mult_delta_left mult_delta_right mult_divide_mult_cancel_left_if nonzero_divide_mult_cancel_right nonzero_mult_div_cancel_left right_inverse_eq times_divide_eq_left times_divide_eq_right times_divide_times_eq zero_neq_numeral)
qed