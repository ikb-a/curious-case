lemma multi_distrib_sum:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) = 
         (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
proof -
  have "(a + b) * (c + d) = a * c + a * d + b * c + b * d" 
    by (simp add: multi_distrib_with_vars)
  moreover have "(e + f) * (g + h) = e * g + e * h + f * g + f * h" 
    by (simp add: multi_distrib_with_vars)
  ultimately show ?thesis by simp
qed