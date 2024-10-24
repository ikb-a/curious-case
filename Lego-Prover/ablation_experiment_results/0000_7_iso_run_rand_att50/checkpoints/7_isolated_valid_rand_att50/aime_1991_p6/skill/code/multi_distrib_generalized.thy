lemma multi_distrib_generalized:
  fixes a b c d e f :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (c + d) = (a + e) * (c + d) + (b + f) * (c + d)"
proof -
  have "((a + b) * (c + d) + (e + f) * (c + d)) = ((a + b + e + f) * (c + d))" 
    by (auto simp: field_simps)
  then show ?thesis
    using multi_distrib_parametrized by (auto simp: field_simps)
qed