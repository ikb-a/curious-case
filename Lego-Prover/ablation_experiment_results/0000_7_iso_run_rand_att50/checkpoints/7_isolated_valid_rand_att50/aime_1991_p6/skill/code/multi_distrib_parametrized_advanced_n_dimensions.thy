lemma multi_distrib_parametrized_advanced_n_dimensions:
  fixes x y z w u v :: "'a :: comm_ring"
  assumes "n > 0"
  shows "(\<Sum>i\<in>{1..n}. (x + y) * (z + w) + (u + v) * (z + w)) = 
         (\<Sum>i\<in>{1..n}. (x + u) * (z + w) + (y + v) * (z + w))"
proof -
  have "\<forall>i. (x + y) * (z + w) = x * z + y * z + x * w + y * w" 
    by (simp add: distrib_left distrib_right)
  moreover have "\<forall>i. (u + v) * (z + w) = u * z + v * z + u * w + v * w" 
    by (simp add: distrib_left distrib_right)
  then have "(\<Sum>i\<in>{1..n}. (x * z + y * z + x * w + y * w + u * z + v * z + u * w + v * w)) =
         (\<Sum>i\<in>{1..n}. (x + u) * (z + w) + (y + v) * (z + w))"
    by (auto simp: field_simps)
  ultimately show ?thesis using assms by (auto simp: field_simps)
qed