theorem amc12a_2021_p7_simplified:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  using expression_nonneg_simplified by auto