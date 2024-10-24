theorem sum_and_product_to_sum_of_squares_generalized:
  fixes x y :: real
  assumes h0 : "x + y = a"
    and h1 : "x * y = b"
    and h2 : "a > 0"
    and h3 : "b > 0"
  shows "sqrt (x^2 + y^2) = sqrt (a^2 - 2 * b)"
proof -
  have "sqrt (x^2 + y^2) = sqrt ((x + y)^2 - 2 * x * y)" 
    by (smt (verit) power2_sum real_sqrt_eq_iff)
  also have "... = sqrt (a^2 - 2 * b)" using h0 h1
    by (metis ab_semigroup_mult_class.mult_ac(1) mult.commute mult.left_commute mult_2_right power2_eq_square)
  finally show ?thesis by simp
qed