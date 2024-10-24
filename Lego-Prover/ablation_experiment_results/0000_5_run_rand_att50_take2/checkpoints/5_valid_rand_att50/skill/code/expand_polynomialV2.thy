lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2 + y^2) + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 = (x^2 * y^2) - 2 * (x * y) + 1" 
    by sos
  moreover have "(x + y)^2 = x^2 + 2 * (x * y) + y^2" 
    by sos
  ultimately have "?lhs = (x^2 * y^2 - 2 * (x * y) + 1) + (x^2 + 2 * (x * y) + y^2)"
    by (simp add: algebra_simps)
  then have "?lhs = x^2 * y^2 + (x^2 + y^2) + (1 - 2 * (x * y) + 2 * (x * y))"
    by (simp add: algebra_simps)
  thus ?thesis 
    by (simp add: algebra_simps)
qed