lemma double_square_sum:
  fixes x y :: real
  shows "2 * (x + y)^2 = 2 * (x^2 + 2 * x * y + y^2)"
proof -
  have "2 * (x + y)^2 = 2 * ((x + y) * (x + y))" by sos
  also have "... = 2 * (x^2 + 2 * x * y + y^2)" by (simp add: algebra_simps power2_eq_square)
  finally show ?thesis .
qed