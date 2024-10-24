lemma distribution_of_sum_with_coefficients:
  fixes a b c d e f g h k l :: "'a :: comm_ring"
  shows "(k * a + l * b) * (c + d) + (e + f) * (g + h) = 
         (k * a * c + l * b * c + k * a * d + l * b * d) + 
         (e * g + f * g + e * h + f * h)"
proof -
  have "(k * a + l * b) * (c + d) = k * a * c + l * b * c + k * a * d + l * b * d" 
    using distrib_left distrib_right by (auto simp: field_simps)
  moreover have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" 
    using distrib_left distrib_right by (auto simp: field_simps)
  ultimately show ?thesis 
    by (metis add.assoc add.commute)
qed