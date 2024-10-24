lemma multi_distrib_complex:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
proof -
  have "a * (c + d) + b * (c + d) = (a + b) * (c + d)"
    by (auto simp: field_simps)
  then show ?thesis by simp
qed