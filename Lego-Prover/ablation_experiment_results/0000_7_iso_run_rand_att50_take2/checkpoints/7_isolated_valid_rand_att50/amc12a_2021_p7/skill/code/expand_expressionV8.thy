lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 + y^2 + (x * y)^2 + 1)"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  have right_side: "(x + y)^2 = x^2 + 2 * x * y + y^2"
    by sos
  have combined_left: "((x * y)^2 - 2 * (x * y) + 1) + (x^2 + 2 * x * y + y^2) = (x * y)^2 + x^2 + y^2 + 1"
  proof -
    have "(- 2 * (x * y) + 2 * (x * y)) = 0" by simp
    thus ?thesis
      by (simp add: left_side right_side)
  qed
  show ?thesis using combined_left by sos
qed