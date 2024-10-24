theorem mathd_algebra_general:
  fixes a b :: real
  assumes "k * a + m * b = c" 
    and "a = d"
    and "k > 0" "m > 0"
  shows "b = (c - k * d) / m"
proof -
  have eq: "k * a + m * b = c" using assms(1) by simp
  have sub: "k * d + m * b = c" using assms(2) eq by simp
  have isolate: "m * b = c - k * d" using sub by simp
  have solution: "b = (c - k * d) / m" using isolate by (metis assms(4) less_numeral_extra(3) mult.commute nonzero_mult_div_cancel_right)
  show ?thesis using solution by simp
qed