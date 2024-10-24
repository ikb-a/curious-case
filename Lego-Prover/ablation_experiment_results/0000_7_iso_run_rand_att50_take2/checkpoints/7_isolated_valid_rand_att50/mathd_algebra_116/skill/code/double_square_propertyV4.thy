lemma double_square_property:
  fixes x :: real
  shows "2 * x^2 = (x + x)^2 - 2 * x^2"
proof -
  have "(x + x)^2 = x^2 + 2 * x * x + x^2" by (simp add: power2_eq_square algebra_simps)
  moreover have "2 * x^2 = x^2 + x^2" by simp
  ultimately show ?thesis by sos
qed