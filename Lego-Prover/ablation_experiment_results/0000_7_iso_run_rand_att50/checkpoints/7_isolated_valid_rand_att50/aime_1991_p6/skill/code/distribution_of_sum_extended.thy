lemma distribution_of_sum_extended:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) * (a + b) = (a * c + b * c + a * d + b * d) + (e * g * a + e * g * b + e * h * a + e * h * b + f * g * a + f * g * b + f * h * a + f * h * b)"
proof -
  have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" by (simp add: distrib_left distrib_right)
  moreover have "(e + f) * (g + h) * (a + b) = (e * g + e * h + f * g + f * h) * (a + b)" 
    by (auto simp: field_simps)
  moreover have "... = (e * g * a + e * g * b + e * h * a + e * h * b + f * g * a + f * g * b + f * h * a + f * h * b)" 
    by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed