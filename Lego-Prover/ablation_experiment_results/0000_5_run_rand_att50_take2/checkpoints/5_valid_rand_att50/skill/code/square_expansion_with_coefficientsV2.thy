lemma square_expansion_with_coefficients:
  fixes a b c d :: real
  shows "(a * c - b * d)^2 = (a^2 * c^2) - 2 * (a * c) * (b * d) + (b^2 * d^2)"
proof -
  have "(a * c - b * d)^2 = (a * c)^2 - 2 * (a * c) * (b * d) + (b * d)^2"
    by sos
  thus ?thesis by sos
qed