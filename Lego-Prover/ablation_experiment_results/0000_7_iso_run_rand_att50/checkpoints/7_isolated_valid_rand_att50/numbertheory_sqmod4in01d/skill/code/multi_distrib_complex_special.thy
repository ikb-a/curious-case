lemma multi_distrib_complex_special:
  fixes a b c d e f g :: complex
  assumes "g = c + d"
  shows "(a + b) * g + (e + f) * g = (a + e) * g + (b + f) * g"
proof -
  have "(a + b) * g + (e + f) * g = (a * g + b * g) + (e * g + f * g)"
    by (auto simp: field_simps)
  also have "... = ((a + e) * g) + ((b + f) * g)"
    using assms by (simp add: field_simps)
  finally show ?thesis .
qed