lemma algebraic_manipulation:
  fixes a b :: real
  shows "(a - b)^2 = a^2 - 2 * a * b + b^2"
proof -
  have left_side: "(a - b)^2 = (a - b) * (a - b)"
    by (simp add: power2_eq_square)
  also have "... = a^2 - 2 * a * b + b^2"
  proof -
    have "a^2 - 2 * a * b + b^2 = a * a - a * b - b * a + b * b"
      by sos
    thus ?thesis
      by sos
  qed
  finally show ?thesis by auto
qed