lemma multi_distrib_with_variables:
  fixes a b c d e f g h :: "'a :: comm_ring"
  assumes "a = x + y" "b = z + w" "c = u + v" "d = s + t"
  shows "(a + b) * (c + d) + (e + f) * (g + h) = (x + y + z + w) * (u + v + s + t) + (e * g + f * g + e * h + f * h)"
proof -
  have "(a + b) * (c + d) = (x + y + z + w) * (u + v + s + t)" using assms by (auto simp: field_simps)
  moreover have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by simp
qed