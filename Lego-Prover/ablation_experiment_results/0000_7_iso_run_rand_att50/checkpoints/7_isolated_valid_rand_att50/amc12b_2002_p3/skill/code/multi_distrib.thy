lemma multi_distrib:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "((a + b) * c) + ((a + b) * d) = (a * c + b * c) + (a * d + b * d)"
    by (auto simp: field_simps)
  then show ?thesis by (simp add: distrib_left)
qed