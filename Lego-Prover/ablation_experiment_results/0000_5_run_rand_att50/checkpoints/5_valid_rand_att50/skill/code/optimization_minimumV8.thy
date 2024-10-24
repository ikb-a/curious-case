lemma optimization_minimum:
  fixes x y :: real
  assumes "x = 0" "y = 0"
  shows "1 = ((x * y) - 1)^2 + (x + y)^2"
proof -
  from assms have "x * y = 0" 
    by simp
  from assms have "x + y = 0" 
    by simp
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  have "?lhs = ((0) - 1)^2 + (0)^2" 
    by (simp add: `x * y = 0` `x + y = 0`)
  have "?lhs = (-1)^2 + 0" 
    by (metis add_cancel_left_right assms(1) assms(2) diff_0 diff_minus_eq_add diff_zero eq_iff_diff_eq_0 mult_eq_0_iff power2_commute power2_eq_iff power2_eq_square zero_eq_power2)
  also have "... = 1" 
    by simp
  finally show "1 = ((x * y) - 1)^2 + (x + y)^2" 
    by simp
qed