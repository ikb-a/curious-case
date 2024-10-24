lemma triangle_inequality_generalized:
  fixes x y :: real
  shows "abs(x + y) <= abs(x) + abs(y)"
proof -
  have "abs(x + y) = sqrt((x + y)^2)" by (simp add: power2_eq_square)
  also have "... <= sqrt(abs(x)^2 + abs(y)^2 + 2 * abs(x) * abs(y))" 
    using abs_triangle_ineq by (metis abs_add_abs power2_sum real_sqrt_abs)
  also have "... = abs(x) + abs(y)" 
    using real_sqrt_ge_zero by (metis abs_add_abs power2_sum real_sqrt_abs)
  finally show ?thesis by simp
qed