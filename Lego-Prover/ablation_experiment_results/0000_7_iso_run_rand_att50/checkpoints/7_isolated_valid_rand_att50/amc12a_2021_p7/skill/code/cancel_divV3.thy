lemma cancel_div:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "a + b / x = c" using assms(2) by auto
  then have "b / x = c - a" by (simp add: algebra_simps)
  then have "b = (c - a) * x" by (metis assms(1) divide_divide_eq_left divide_eq_0_iff frac_eq_eq less_numeral_extra(3) mult_zero_left nonzero_divide_eq_eq nonzero_mult_div_cancel_left nonzero_mult_divide_mult_cancel_right times_divide_eq_left)
  thus ?thesis by (simp add: algebra_simps)
qed