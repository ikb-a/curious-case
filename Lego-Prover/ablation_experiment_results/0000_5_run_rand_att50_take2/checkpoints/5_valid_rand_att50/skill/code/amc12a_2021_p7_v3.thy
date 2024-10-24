theorem amc12a_2021_p7_v3:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 + (x + y)^2 = ((x * y) - 1)^2 + (x + y)^2"
    by simp
  also have "... = 1 + (x + y)^2 + x^2 * y^2 - 2 * x * y" by sos
  finally show ?thesis using expression_nonneg_extended by (metis)
qed