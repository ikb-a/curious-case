lemma cancel_div_general_extended:
  fixes x a b c d :: "'a::field"
  assumes "x \<noteq> 0" "a + b / x = c" "d \<noteq> 0"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + b = c * x" by (metis add.commute add_divide_eq_if_simps(2) add_right_imp_eq add_scale_eq_noteq assms(1) assms(2) divide_cancel_right mult.commute mult.left_commute mult_delta_left mult_right_cancel nonzero_eq_divide_eq times_divide_eq_left)
  thus ?thesis using assms(1) by (simp add: mult.commute)
qed