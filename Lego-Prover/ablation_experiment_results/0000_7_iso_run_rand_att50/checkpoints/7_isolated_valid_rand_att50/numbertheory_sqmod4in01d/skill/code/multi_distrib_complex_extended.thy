lemma multi_distrib_complex_extended:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "((a + b) + (e + f)) * (c + d) = (a + e + b + f) * (c + d)"
    by simp
  then show ?thesis by (auto simp: field_simps)
qed