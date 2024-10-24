lemma distribution_of_sum_expanded_generalized:
  fixes x1 x2 y1 y2 z1 z2 :: "'a :: comm_ring"
  shows "(x1 + x2) * (y1 + y2) + (z1 + z2) * (y1 + y2) = (x1 * y1 + x2 * y1 + x1 * y2 + x2 * y2) + (z1 * y1 + z1 * y2 + z2 * y1 + z2 * y2)"
proof -
  have "(x1 + x2) * (y1 + y2) = x1 * y1 + x2 * y1 + x1 * y2 + x2 * y2" by (simp add: distrib_left distrib_right)
  moreover have "(z1 + z2) * (y1 + y2) = z1 * y1 + z2 * y1 + z1 * y2 + z2 * y2" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed