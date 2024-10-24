lemma expand_expression:
  fixes x y :: real
  shows "((x * y) - 1)^2 + (x + y)^2 = x^2 * y^2 + x^2 + y^2 + 1"
proof -
  have lhs: "((x * y) - 1)^2 + (x + y)^2 = ((x * y) - 1) * ((x * y) - 1) + (x + y) * (x + y)"
    by (simp add: power2_eq_square)
  also have "... = (x * y)^2 - 2 * (x * y) + 1 + (x + y) * (x + y)"
    by sos
  also have "... = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
    by sos
  also have "... = (x * y)^2 + x^2 + y^2 + 1 - 2 * (x * y) + 2 * (x * y)"
    by (simp add: algebra_simps)
  also have "... = (x * y)^2 + x^2 + y^2 + 1"
    by (simp add: algebra_simps)
  finally show ?thesis by sos
qed