lemma distributive_property_general:
  fixes a b c d e f g h :: "'a :: comm_ring"
  assumes "x + y = a" "u + v = e"
  shows "(x + y) * (c + d) + (u + v) * (g + h) = (x * c + y * c + x * d + y * d) + (u * g + v * g + u * h + v * h)"
proof -
  have "(x + y) * (c + d) = x * c + y * c + x * d + y * d" by (simp add: distrib_left distrib_right)
  moreover have "(u + v) * (g + h) = u * g + v * g + u * h + v * h" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed