lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a * c + a * d + b * c + b * d) + (e * c + e * d + f * c + f * d)"
    by (auto simp: field_simps)
  also have "... = ((a + e) * c + (a + e) * d) + ((b + f) * c + (b + f) * d)"
    by (auto simp: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed