lemma expand_polynomial:
  fixes x y :: real
  shows "(x + y)^2 = x^2 + 2 * x * y + y^2"
proof -
  have lhs: "(x + y)^2 = (x + y) * (x + y)"
    by (simp add: power2_eq_square)
  also have "... = x * (x + y) + y * (x + y)"
    by (simp add: algebra_simps)
  also have "... = x * x + x * y + y * x + y * y"
    by (simp add: algebra_simps)
  also have "... = x^2 + 2 * x * y + y^2"
    by sos
  finally show ?thesis 
    by simp
qed