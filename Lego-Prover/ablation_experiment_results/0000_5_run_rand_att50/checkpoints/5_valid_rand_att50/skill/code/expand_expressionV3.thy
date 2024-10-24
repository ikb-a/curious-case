lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2 + x^2 + y^2 + 1)"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  have right_side: "(x^2 * y^2 + x^2 + y^2 + 1) = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: power2_eq_square)
  show ?thesis
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
      by (simp add: left_side)
    also have "... = (x * y)^2 + x^2 + y^2 + 1" using algebra_simps by auto
    finally show ?thesis using right_side by simp
  qed
qed