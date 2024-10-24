lemma double_square_property:
  fixes x :: real
  shows "2 * x^2 = (2 * x) * x"
proof -
  have "2 * x^2 = 2 * (x * x)" by (simp add: power2_eq_square)
  also have "... = (2 * x) * x" by (simp add: algebra_simps)
  finally show ?thesis .
qed