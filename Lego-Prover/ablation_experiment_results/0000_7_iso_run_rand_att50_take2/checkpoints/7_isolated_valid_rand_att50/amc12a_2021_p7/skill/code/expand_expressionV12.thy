lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 + y^2 + (x * y)^2 + 1)"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have expansion: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have combined_left: "((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2) =
                       (x * y)^2 + x^2 + y^2 - 2 * (x * y) + 1 + 2 * (x * y)"
    by (simp add: expansion)
  have final_expansion: "(x * y)^2 + x^2 + y^2 + 1 = (x^2 + y^2 + (x * y)^2 + 1)"
    by simp
  thus ?thesis
    by sos
qed