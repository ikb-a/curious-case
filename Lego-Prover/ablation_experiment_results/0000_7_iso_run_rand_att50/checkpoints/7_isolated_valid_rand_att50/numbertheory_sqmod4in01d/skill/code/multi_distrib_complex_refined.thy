lemma multi_distrib_complex_refined:
  fixes a b c d e f g h :: complex
  assumes "g = a + e" "h = b + f"
  shows "(a + b) * (c + d) + (e + f) * (c + d) = g * (c + d) + h * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a * c + a * d + b * c + b * d) + (e * c + e * d + f * c + f * d)"
    by (auto simp: field_simps)
  also have "... = (g * c + g * d) + (h * c + h * d)"
    using assms by (auto simp: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed