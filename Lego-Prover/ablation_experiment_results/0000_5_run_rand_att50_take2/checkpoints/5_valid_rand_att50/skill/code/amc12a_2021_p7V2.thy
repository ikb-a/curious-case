theorem amc12a_2021_p7:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
  apply (auto simp: algebra_simps power2_eq_square)
  using product_sum_expression by (metis add_nonneg_nonneg mult_le_0_iff mult_nonneg_nonneg mult_nonpos_nonpos zero_le_mult_iff zero_le_square)