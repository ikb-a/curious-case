lemma triangle_inequality:
  fixes a b c :: real
  shows "abs(a + b) <= abs(a) + abs(b)"
proof -
  have "abs(a + b) = sqrt((a + b)^2)" by (simp add: power2_eq_square)
  also have "... <= sqrt(abs(a)^2 + abs(b)^2 + 2 * abs(a) * abs(b))" using abs_triangle_ineq by (metis abs_add_abs power2_sum real_sqrt_abs)
  also have "... = abs(a) + abs(b)" by (metis abs_of_nonneg add.commute add_nonneg_nonneg power2_sum real_sqrt_abs real_sqrt_ge_zero real_sqrt_mult real_sqrt_mult_self zero_le_square)
  finally show ?thesis by simp
qed