lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
proof -
  have left_side: "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  also have "... = (x^2 * y^2) - 2 * (x * y) + 1 + x^2 + 2 * x * y + y^2"
    by (simp add: power2_eq_square)
  also have "... = (x^2 * y^2) + (x^2) + (y^2) + (1 - 2 * (x * y) + 2 * (x * y))"
    by auto
  finally have "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) + (x^2) + (y^2) + 1"
    by simp
  thus ?thesis by simp
qed