lemma multi_distrib_complex_refined:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e + b + f) * (c + d)"
proof -
  have "((a + b) * (c + d) + (e + f) * (c + d)) = (a * c + a * d + b * c + b * d) + (e * c + e * d + f * c + f * d)"
    by (auto simp: field_simps)
  also have "... = (a + b + e + f) * (c + d)"
    by (auto simp: field_simps)
  finally show ?thesis by auto
qed