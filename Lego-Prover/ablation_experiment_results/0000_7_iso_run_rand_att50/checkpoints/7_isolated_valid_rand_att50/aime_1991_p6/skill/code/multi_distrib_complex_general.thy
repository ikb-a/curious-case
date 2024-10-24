lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a + b + e + f) * (c + d)" by (auto simp: field_simps)
  also have "... = (a + e) * (c + d) + (b + f) * (c + d)" by (auto simp: field_simps)
  finally show ?thesis .
qed