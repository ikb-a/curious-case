lemma multi_distrib_with_parameters:
  fixes a b c d e f g h :: "'a :: comm_ring"
  assumes "x = a + b" "y = c + d" "u = e + f" "v = g + h"
  shows "x * y + u * v = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
proof -
  have "x * y = (a + b) * (c + d)" using assms by simp
  moreover have "u * v = (e + f) * (g + h)" using assms by simp
  ultimately show ?thesis using multi_distrib_general by simp
qed