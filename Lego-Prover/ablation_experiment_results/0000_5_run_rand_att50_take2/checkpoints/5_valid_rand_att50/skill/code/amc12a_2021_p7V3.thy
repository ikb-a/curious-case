theorem amc12a_2021_p7:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  using combined_expression_nonneg by (simp add: algebra_simps)