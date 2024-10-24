lemma expand_polynomial:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  let ?rhs = "x^2 * y^2 + x^2 + y^2 + 1"
  have lhs_expanded: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have plus_expanded: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have lhs: "?lhs = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  have lhs_combined: "?lhs = (x * y)^2 + x^2 + y^2 + 1"
    by sos
  show ?thesis
  proof -
    have "?lhs = (x * y)^2 + x^2 + y^2 + 1"
      using lhs_combined by simp
    thus ?thesis
      by sos
  qed
qed