lemma multi_distrib_with_three_terms:
  fixes a b c d e f g :: "'a :: comm_ring"
  shows "(a + b + c) * (d + e) = a * (d + e) + b * (d + e) + c * (d + e)"
proof -
  have "(a + b + c) * (d + e) = (a + b) * (d + e) + c * (d + e)" 
    by (auto simp: field_simps)
  thus ?thesis by (auto simp: field_simps)
qed