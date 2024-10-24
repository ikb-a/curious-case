lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a * (c + d) + b * (c + d)) + (e * (c + d) + f * (c + d))"
    by (auto simp: field_simps)
  also have "... = (a + b + e + f) * (c + d)" by (simp add: distrib_right)
  finally show ?thesis by (auto simp: field_simps)
qed