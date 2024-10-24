lemma expand_polynomial_with_coefficients:
  fixes x y c :: real
  shows "(c * (x + y))^2 = c^2 * (x^2 + 2 * x * y + y^2)"
proof -
  have lhs: "(c * (x + y))^2 = (c * (x + y)) * (c * (x + y))" 
    by sos
  also have "... = c * (x + y) * c * (x + y)" 
    by simp
  also have "... = (c * c) * (x + y) * (x + y)" 
    by (simp add: mult.commute)
  also have "... = c^2 * ((x + y) * (x + y))" 
    by sos
  also have "... = c^2 * (x^2 + 2 * x * y + y^2)" 
    by sos
  finally show ?thesis 
    by simp
qed