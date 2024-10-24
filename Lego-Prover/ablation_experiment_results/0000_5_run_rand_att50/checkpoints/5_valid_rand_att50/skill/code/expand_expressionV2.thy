lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 + x^2 + y^2 + 1)"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  have "((x * y) - 1)^2 = (x * y)^2 - 2 * (x * y) + 1"
    by sos
  have right_side: "x^2 * y^2 + x^2 + y^2 + 1 = (x * y)^2 + x^2 + y^2 + 1"
    by sos
  have "((x * y) - 1)^2 + (x + y)^2 = ((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2)"
    using left_side by simp
  have "x^2 + 2 * x * y + y^2 = (x + y)^2"
    by sos
  thus ?thesis
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
      by sos
    also have "... = (x * y)^2 + (x^2 + 2 * x * y + y^2) - 2 * (x * y) + 1"
      by simp
    finally show ?thesis
      unfolding right_side by simp
  qed
qed