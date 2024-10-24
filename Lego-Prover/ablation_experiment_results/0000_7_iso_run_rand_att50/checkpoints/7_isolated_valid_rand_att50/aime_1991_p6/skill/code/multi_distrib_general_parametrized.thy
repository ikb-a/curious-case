lemma multi_distrib_general_parametrized:
  fixes a b c d e f g h :: "'a :: comm_ring"
  assumes "x = a + b" "y = c + d" "u = e + f" "v = g + h"
  shows "x * y + u * v = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
proof -
  have "x * y = (a + b) * (c + d)" using assms by simp
  then have "(a + b) * (c + d) = a * c + b * c + a * d + b * d" by (simp add: distrib_left distrib_right)
  moreover have "u * v = (e + f) * (g + h)" using assms by simp
  then have "(e + f) * (g + h) = e * g + f * g + e * h + f * h" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by (metis \<open>u * v = (e + f) * (g + h)\<close> \<open>x * y = (a + b) * (c + d)\<close>)
qed