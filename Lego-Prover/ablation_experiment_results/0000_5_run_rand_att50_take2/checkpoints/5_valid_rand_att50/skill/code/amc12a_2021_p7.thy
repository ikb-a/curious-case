theorem amc12a_2021_p7:
  fixes x y ::real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  apply (auto simp:algebra_simps power2_eq_square)
  using expression_nonneg by sos