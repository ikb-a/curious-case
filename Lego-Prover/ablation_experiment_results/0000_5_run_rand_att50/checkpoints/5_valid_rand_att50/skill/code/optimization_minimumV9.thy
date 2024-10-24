lemma optimization_minimum:
  fixes x y :: real
  assumes "x = 0" "y = 0"
  shows "1 = ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "x * y = 0 * 0" using assms by simp
  then have "x * y = 0" by simp
  have "x + y = 0 + 0" using assms by simp
  then have "x + y = 0" by simp
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  have "?lhs = (0 - 1)^2 + 0^2" 
    using `x * y = 0` `x + y = 0` by auto
  have "?lhs = 1^2 + 0" by (metis add_0_iff assms(1) assms(2) diff_minus_eq_add diff_zero eq_iff_diff_eq_0 mult_eq_0_iff power2_commute power2_eq_square verit_minus_simplify(3) zero_eq_power2)
  then have "?lhs = 1" by simp
  thus ?thesis 
    by simp
qed