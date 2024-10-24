lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2 + y^2) + 1"
proof -
  have lhs1: "((x * y) - 1)^2 = (x * y)^2 - 2 * (x * y) + 1"
    by sos
  moreover have lhs2: "(x + y)^2 = x^2 + 2 * (x * y) + y^2"
    by sos
  ultimately have 
    "((x * y) - 1)^2 + (x + y)^2 = ((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * (x * y) + y^2)"
    by simp
  then have "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 - 2 * (x * y) + 1) + (x^2 + 2 * (x * y) + y^2)"
    by (simp add: algebra_simps)
  also have "... = x^2 * y^2 + (x^2 + y^2) + 1"
    by (simp add: algebra_simps)
  finally show ?thesis
    by (simp add: algebra_simps)
qed