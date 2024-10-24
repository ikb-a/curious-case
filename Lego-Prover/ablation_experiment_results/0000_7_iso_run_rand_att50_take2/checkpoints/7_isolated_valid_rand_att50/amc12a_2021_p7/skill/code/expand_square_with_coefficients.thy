lemma expand_square_with_coefficients:
  fixes x y c :: real
  shows "(c * (x + y))^2 = c^2 * (x^2 + 2 * x * y + y^2)"
proof -
  have "(c * (x + y)) * (c * (x + y)) = c * (x + y) * (c * (x + y))"
    by (simp add: algebra_simps)
  also have "... = c * (x + y) * (x + y) * c"
    by (simp add: algebra_simps)
  also have "... = c^2 * ((x + y) * (x + y))"
    by sos
  also have "... = c^2 * (x^2 + 2 * x * y + y^2)"
    by sos
  finally show ?thesis by sos
qed