lemma multi_distrib_general:
  fixes a b c d e f :: "'a::ring"
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a * (c + d) + b * (c + d) + e * (c + d) + f * (c + d))"
    by (auto simp: field_simps)
  also have "... = ((a + e) + (b + f)) * (c + d)" by (auto simp: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed