lemma distribution_of_sum_generalized:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
proof -
  have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" using distrib_left distrib_right by (auto simp: field_simps)
  moreover have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" using distrib_left distrib_right by (auto simp: field_simps)
  ultimately show ?thesis by (metis add.assoc add.commute)
qed