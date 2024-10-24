lemma polynomial_identity_factorized:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (auto simp: field_simps)
  thus ?thesis by simp
qed