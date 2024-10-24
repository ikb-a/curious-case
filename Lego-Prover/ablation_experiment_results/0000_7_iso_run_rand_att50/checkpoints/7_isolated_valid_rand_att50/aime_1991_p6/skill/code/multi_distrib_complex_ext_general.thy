lemma multi_distrib_complex_ext_general:
  fixes a b c d e f :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + b + e + f) * (c + d)"
proof -
  have "(a + b) * (c + d) + (e + f) * (c + d) = (a * c + b * c + a * d + b * d) + (e * c + f * c + e * d + f * d)"
    by (auto simp: field_simps)
  also have "... = (a + b + e + f) * (c + d)"
    by (auto simp: field_simps)
  finally show ?thesis by simp
qed