lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + b + e + f) * (c + d)"
proof -
  have "((a + b) + (e + f)) * (c + d) = (a + b) * (c + d) + (e + f) * (c + d)"
    by (auto simp: field_simps)
  thus ?thesis by (auto simp: field_simps)
qed