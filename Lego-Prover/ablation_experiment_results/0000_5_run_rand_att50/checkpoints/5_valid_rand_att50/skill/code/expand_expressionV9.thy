lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 + x^2 + y^2 + 1)"
proof -
  have lhs: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have lhs_expanded: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by (simp add: lhs)
  have combined_terms: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 + x^2 + y^2 + 1"
    by sos
  have rhs: "x^2 * y^2 + x^2 + y^2 + 1 = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: power2_eq_square)
  show ?thesis
    by (simp add: combined_terms rhs)
qed