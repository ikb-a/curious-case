lemma multi_distrib_with_scalars:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "k * ((a + b) * (c + d) + (e + f) * (g + h)) = k * (a * c + b * c + a * d + b * d) + k * (e * g + f * g + e * h + f * h)"
proof -
  have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" by (simp add: distrib_left distrib_right)
  moreover have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" by (simp add: distrib_left distrib_right)
  ultimately have "((a + b) * (c + d) + (e + f) * (g + h)) = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)" by simp
  thus ?thesis by (simp add: distrib_left)
qed