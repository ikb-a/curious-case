lemma distribution_of_sum:
  fixes a b c d e f :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (a + b) = (a * c + b * c + a * d + b * d) + (e * a + e * b + f * a + f * b)"
proof -
  have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" by (simp add: distrib_left distrib_right)
  moreover have "(e + f) * (a + b) = e * a + e * b + f * a + f * b" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed