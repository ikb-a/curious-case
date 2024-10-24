lemma multi_distrib_cubic:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d + e + f) = a * c + a * d + a * e + a * f + b * c + b * d + b * e + b * f"
proof -
  have "(a + b) * (c + d + e + f) = (a + b) * ((c + d) + (e + f))" by simp
  also have "... = (a + b) * (c + d) + (a + b) * (e + f)" by (simp add: distrib_left)
  also have "... = (a * c + a * d + b * c + b * d) + (a * e + a * f + b * e + b * f)" by (auto simp: field_simps)
  thus ?thesis by (auto simp: field_simps)
qed