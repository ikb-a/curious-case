lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have expanded_left: "((x * y) - 1)^2 + (x^2 + 2 * x * y + y^2) =
                       (x * y)^2 - 2 * (x * y) + 1 + x^2 + 2 * x * y + y^2"
    by sos
  have "((x * y)^2 - 2 * (x * y) + 1 + x^2 + 2 * x * y + y^2) =
        (x^2 * y^2) + (x^2) + (y^2) + 1"
  proof -
    have "(x * y)^2 + x^2 + y^2 + 1 = x^2 * y^2 + x^2 + y^2 + 1" by sos
    also have "... + (-2 * (x * y) + 2 * (x * y)) = x^2 * y^2 + (x^2 + y^2) + 1"
      by simp
    finally show ?thesis by simp
  qed
  thus ?thesis by sos
qed