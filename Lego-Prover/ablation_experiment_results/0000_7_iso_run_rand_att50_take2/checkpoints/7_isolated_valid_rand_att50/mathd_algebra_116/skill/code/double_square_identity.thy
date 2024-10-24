lemma double_square_identity:
  fixes x :: real
  shows "2 * x^2 = (x + x)^2 - (x^2 + x^2)"
proof -
  have "(x + x)^2 = x^2 + 2 * x * x + x^2" by (simp add: power2_eq_square algebra_simps)
  also have "... = 2 * x^2 + 2 * x^2" by sos
  finally show ?thesis by simp
qed