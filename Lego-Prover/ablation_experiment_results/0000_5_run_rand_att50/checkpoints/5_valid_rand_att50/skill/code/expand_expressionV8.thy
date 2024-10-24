lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 + x^2 + y^2 + 1)"
proof -
  have lhs_expanded: "((x * y) - 1)^2 + (x + y)^2 = ((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2)"
    by sos
  have "((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2) = (x * y)^2 + (x^2 + y^2) + 1"
    by (simp add: algebra_simps)
  have rhs_expanded: "x^2 * y^2 + x^2 + y^2 + 1 = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: power2_eq_square)
  show ?thesis
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 + x^2 + y^2 + 1"
      using lhs_expanded by simp
    also have "... = (x^2 * y^2 + x^2 + y^2 + 1)"
      using rhs_expanded by simp
    finally show ?thesis by simp
  qed
qed