lemma multi_distrib_complex_refined:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have lhs: "(a + b) * (c + d) + (e + f) * (c + d) = (a * c + a * d + b * c + b * d) + (e * c + e * d + f * c + f * d)"
    by (auto simp: field_simps)
  have rhs: "((a + e) * c + (a + e) * d) + ((b + f) * c + (b + f) * d) = (a + e) * (c + d) + (b + f) * (c + d)"
    by (simp add: distrib_left)
  show ?thesis using lhs rhs by (auto simp: field_simps)
qed