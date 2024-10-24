lemma algebraic_manipulation:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have left_side: "(a - b)^2 = (a - b) * (a - b)"
    by (simp add: power2_eq_square)
  also have "... = a * a - a * b - b * a + b * b"
    by (simp add: algebra_simps)
  also have "... = a^2 - (a * b + b * a) + b^2"
    by sos
  also have "... = a^2 - 2 * a * b + b^2"
    by (simp add: algebra_simps)
  finally show ?thesis
    by auto
qed