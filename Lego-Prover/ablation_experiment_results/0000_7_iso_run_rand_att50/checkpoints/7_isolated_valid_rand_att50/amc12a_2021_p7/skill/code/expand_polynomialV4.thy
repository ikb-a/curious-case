lemma expand_polynomial:
  fixes x y :: real
  shows "(x * y - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  have lhs1: "(x * y - 1)^2 = (x * y)^2 - 2 * (x * y) + 1"
    by sos
  have lhs2: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have lhs: "(x * y - 1)^2 + (x + y)^2 = ((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2)"
    by (simp add: lhs1 lhs2)
  have "((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2) = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: algebra_simps)
  also have "... = x^2 * y^2 + x^2 + y^2 + 1" 
    by (simp add: algebra_simps)
  thus ?thesis by (simp add: lhs)
qed