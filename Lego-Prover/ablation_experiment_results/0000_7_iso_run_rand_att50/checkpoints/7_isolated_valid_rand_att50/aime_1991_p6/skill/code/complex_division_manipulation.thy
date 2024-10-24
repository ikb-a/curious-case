lemma complex_division_manipulation:
  fixes x a b c d :: complex
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x = a * x + b" using assms(2) by (metis add.commute add_cancel_left_right add_divide_eq_if_simps(2) add_scale_eq_noteq assms(1) crossproduct_noteq distrib_left divide_cancel_right divide_eq_eq mult.commute mult.left_commute mult_delta_left mult_delta_right mult_left_cancel nonzero_mult_div_cancel_left times_divide_eq_left)
  thus ?thesis by simp
qed