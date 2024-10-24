lemma multi_distrib_parametrized_advanced:
  fixes x y z w u v :: "'a :: comm_ring"
  shows "(x + y) * (z + w) + (u + v) * (z + w) = (x + u) * (z + w) + (y + v) * (z + w)"
proof -
  have "(x + y) * (z + w) = x * z + y * z + x * w + y * w" by (simp add: distrib_left distrib_right)
  moreover have "(u + v) * (z + w) = u * z + v * z + u * w + v * w" by (simp add: distrib_left distrib_right)
  then have "x * z + y * z + x * w + y * w + u * z + v * z + u * w + v * w = (x + u) * (z + w) + (y + v) * (z + w)"
    by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by (auto simp: field_simps)
qed