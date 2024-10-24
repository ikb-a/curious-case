lemma multi_distrib_parametrized:
  fixes x y z w u v :: "'a :: comm_ring"
  shows "(x + y) * (z + w) + (u + v) * (x + y) = (x * z + y * z + x * w + y * w) + (u * x + u * y + v * x + v * y)"
proof -
  have "(x + y) * (z + w) = x * z + y * z + x * w + y * w" by (simp add: distrib_left distrib_right)
  moreover have "(u + v) * (x + y) = u * x + u * y + v * x + v * y" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed