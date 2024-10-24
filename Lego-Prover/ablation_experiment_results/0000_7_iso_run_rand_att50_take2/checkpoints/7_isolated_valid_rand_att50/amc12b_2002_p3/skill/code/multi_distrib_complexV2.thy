lemma multi_distrib_complex:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (simp add: distrib_right)
  also have "... = a * c + a * d + b * c + b * d" by (auto simp: field_simps)
  finally show ?thesis by simp
qed