lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  let ?rhs = "x^2 * y^2 + x^2 + y^2 + 1"
  have lhs_expanded: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  then have lhs_final: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    using lhs_expanded by simp
  have "?lhs = (x * y)^2 + x^2 + y^2 + 1 + 2 * x * y - 2 * (x * y)"
    by (simp add: lhs_final)
  also have "... = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: algebra_simps)
  show "?lhs = ?rhs"
    by sos
qed