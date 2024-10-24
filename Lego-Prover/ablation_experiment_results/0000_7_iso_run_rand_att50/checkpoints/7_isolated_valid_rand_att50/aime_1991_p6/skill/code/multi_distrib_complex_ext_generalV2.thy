lemma multi_distrib_complex_ext_general:
  fixes a b c d e f :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
proof -
  have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" by (simp add: distrib_left distrib_right)
  moreover have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed