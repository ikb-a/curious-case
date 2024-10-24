lemma double_square_property:
  fixes x :: real
  shows "2 * x^2 = (x + x)^2 - 2 * (x^2)"
proof -
  have "2 * x^2 = x^2 + x^2" by simp
  also have "... = (x + x)^2 - 2 * (x^2)" by (simp add: power2_eq_square)
  finally show ?thesis .
qed