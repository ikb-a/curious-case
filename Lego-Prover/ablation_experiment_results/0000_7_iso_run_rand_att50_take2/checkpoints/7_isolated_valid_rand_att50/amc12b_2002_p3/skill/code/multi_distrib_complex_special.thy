lemma multi_distrib_complex_special:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = (a + b) * c + (a + b) * d" by (auto simp: field_simps)
  also have "... = a * c + b * c + a * d + b * d" by (simp add: distrib_right)
  finally show ?thesis by simp
qed