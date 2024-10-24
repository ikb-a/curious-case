lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have expansion: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have combined_left: "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    using left_side expansion by sos
  have final_expansion: "(x^2 * y^2) - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2) = (x^2 * y^2) + (x^2) + (y^2) + 1"
  proof -
    have "(x^2 * y^2) - 2 * (x * y) + 1 + 2 * (x * y) = (x^2 * y^2) + 1"
      by simp
    thus ?thesis by (simp add: algebra_simps)
  qed
  thus ?thesis by (simp add: combined_left)
qed