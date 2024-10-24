lemma multi_distrib_complex:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + b * c + a * d + b * d"
proof -
  have "(a + b) * (c + d) = (a * c + a * d) + (b * c + b * d)"
    using distrib_left by (auto simp: field_simps)
  thus ?thesis by simp
qed