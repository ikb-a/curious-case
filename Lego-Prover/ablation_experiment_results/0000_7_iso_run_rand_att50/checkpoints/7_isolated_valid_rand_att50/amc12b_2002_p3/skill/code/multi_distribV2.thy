lemma multi_distrib:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
    by (simp add: field_simps)
  thus ?thesis by simp
qed