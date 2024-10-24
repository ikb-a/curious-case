lemma multi_distrib_complex_ext:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) * (e + f) = a * c * e + a * c * f + a * d * e + a * d * f + b * c * e + b * c * f + b * d * e + b * d * f"
proof -
  have "((a + b) * (c + d)) * (e + f) = (a * c + a * d + b * c + b * d) * (e + f)"
    by (auto simp: field_simps)
  also have "... = (a * c * e + a * c * f + a * d * e + a * d * f + b * c * e + b * c * f + b * d * e + b * d * f)"
    by (auto simp: field_simps)
  finally show ?thesis .
qed