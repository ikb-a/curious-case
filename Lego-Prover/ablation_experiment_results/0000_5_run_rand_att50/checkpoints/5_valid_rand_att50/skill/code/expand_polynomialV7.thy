lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  let ?rhs = "x^2 * y^2 + x^2 + y^2 + 1"
  have expansion_lhs: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have expansion_rhs: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have final_lhs: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    using expansion_lhs expansion_rhs by simp
  have simplified_lhs: "?lhs = (x * y)^2 + x^2 + y^2 + 1"
    by sos
  show ?thesis
  proof -
    have "?lhs = (x * y)^2 + x^2 + y^2 + 1"
      using final_lhs simplified_lhs by simp
    thus "?lhs = ?rhs"
      by (simp add: algebra_simps)
  qed
qed