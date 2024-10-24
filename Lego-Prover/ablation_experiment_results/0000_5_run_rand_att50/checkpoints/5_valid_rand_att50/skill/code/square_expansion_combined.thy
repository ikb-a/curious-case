lemma square_expansion_combined:
  fixes a b c :: real
  shows "(a - (b + c))^2 = a^2 - 2 * a * b - 2 * a * c + b^2 + 2 * b * c + c^2"
proof -
  have "a^2 - 2 * a * (b + c) + (b + c)^2 = a^2 - 2 * a * b - 2 * a * c + (b^2 + 2 * b * c + c^2)"
    by sos
  thus ?thesis by sos
qed