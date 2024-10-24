lemma multi_distrib_complex_general:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) * (e + f) = a * c * e + a * c * f + a * d * e + a * d * f + b * c * e + b * c * f + b * d * e + b * d * f"
proof -
  have "(a + b) * (c + d) * (e + f) = ((a + b) * (c + d)) * (e + f)" by simp
  also have "... = (a * c + b * c + a * d + b * d) * (e + f)" by (auto simp: field_simps)
  also have "... = (a * c * e + a * c * f + b * c * e + b * c * f + a * d * e + a * d * f + b * d * e + b * d * f)"
    by (auto simp: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed