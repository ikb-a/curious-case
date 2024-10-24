lemma multi_distrib_over_complex_general:
  fixes a b c d e f :: complex
  assumes "a + b = c + d"
  shows "(a + b) * (e + f) = c * (e + f) + d * (e + f)"
proof -
  have "c + d = a + b" using assms by simp
  hence "(a + b) * (e + f) = (c + d) * (e + f)" by simp
  thus ?thesis by (auto simp: field_simps)
qed