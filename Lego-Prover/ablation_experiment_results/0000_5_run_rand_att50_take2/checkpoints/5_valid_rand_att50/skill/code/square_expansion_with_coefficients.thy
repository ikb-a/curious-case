lemma square_expansion_with_coefficients:
  fixes a b c d :: real
  shows "(a * x - b * y) ^ 2 = a^2 * x^2 - 2 * a * b * x * y + b^2 * y^2"
proof -
  have "((a * x) - (b * y))^2 = (a * x)^2 - 2 * (a * x) * (b * y) + (b * y)^2" by sos
  thus ?thesis by (simp add: power2_eq_square)
qed