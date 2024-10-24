lemma double_square_power:
  fixes x :: real
  shows "2 * (x^2) = (x + x)^2 - 2 * x * x"
proof -
  have "(x + x)^2 = x^2 + x^2 + 2 * x * x" by (simp add: power2_eq_square)
  then show ?thesis by (simp add: field_simps)
qed