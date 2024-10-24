lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 + x^2 + y^2 + 1)"
proof -
  have lhs: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by (simp add: lhs)
  have rhs: "x^2 * y^2 + x^2 + y^2 + 1 = (x * y)^2 + (x^2 + y^2) + 1"
    by (simp add: algebra_simps)
  show ?thesis
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
      by sos
    also have "... = (x * y)^2 + (x^2 + y^2) + 1"
      by (simp add: algebra_simps)
    finally show ?thesis
      by (simp add: rhs)
  qed
qed