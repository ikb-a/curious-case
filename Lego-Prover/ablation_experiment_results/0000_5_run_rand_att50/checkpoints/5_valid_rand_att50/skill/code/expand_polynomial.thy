lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  let ?rhs = "x^2 * y^2 + x^2 + y^2 + 1"
  have "((x * y) - 1)^2 = (x * y)^2 - 2 * (x * y) + 1" 
    by sos
  hence lhs1: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by simp
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" 
    by sos
  then have lhs2: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    using lhs1 by simp
  thus "?lhs = ?rhs"
  proof -
    have "?lhs = (x * y)^2 - 2 * (x * y) + 1 + x^2 + 2 * x * y + y^2"
      by (simp add: lhs2)
    also have "... = (x * y)^2 + x^2 + y^2 + 1"
      by (simp add: algebra_simps)
    finally show "?lhs = ?rhs" 
      by (simp add: algebra_simps)
  qed
qed