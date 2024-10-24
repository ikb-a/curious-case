lemma triangle_inequality_general:
  fixes x y :: real
  shows "abs(x + y) \<le> abs(x) + abs(y)"
proof -
  have "abs(x + y) = sqrt((x + y)^2)" by (simp add: power2_eq_square)
  also have "... \<le> sqrt(abs(x)^2 + abs(y)^2 + 2 * abs(x) * abs(y))" using abs_triangle_ineq by (metis abs_add_abs power2_sum real_sqrt_abs)
  also have "... = abs(x) + abs(y)" by (metis abs_of_nonneg add.commute add_nonneg_nonneg power2_sum real_sqrt_abs real_sqrt_ge_zero real_sqrt_mult real_sqrt_mult_self zero_le_square)
  finally show ?thesis by simp
qed