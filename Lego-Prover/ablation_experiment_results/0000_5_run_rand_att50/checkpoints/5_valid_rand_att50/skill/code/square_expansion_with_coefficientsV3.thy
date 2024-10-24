lemma square_expansion_with_coefficients:
  fixes a b c d :: real
  shows "(c * a - d * b)^2 = c^2 * a^2 - 2 * c * d * a * b + d^2 * b^2"
proof -
  have "c^2 * a^2 - 2 * c * d * a * b + d^2 * b^2 = (c * a - d * b)^2"
    by sos
  thus ?thesis by simp
qed