lemma multi_distrib_sum_with_three_terms:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b + c) * (d + e) + (f + g) * (h + e) = 
         (a * (d + e) + b * (d + e) + c * (d + e)) + (f * (h + e) + g * (h + e))"
proof -
  have "(a + b + c) * (d + e) = a * (d + e) + b * (d + e) + c * (d + e)" 
    by (simp add: multi_distrib_with_three_terms)
  moreover have "(f + g) * (h + e) = f * (h + e) + g * (h + e)" 
    by (auto simp: field_simps)
  ultimately show ?thesis by simp
qed