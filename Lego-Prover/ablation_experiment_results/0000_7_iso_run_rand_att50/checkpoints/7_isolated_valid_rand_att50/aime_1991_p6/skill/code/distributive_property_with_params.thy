lemma distributive_property_with_params:
  fixes a b c d x y :: "'a :: comm_ring"
  assumes "x = a + b" "y = c + d"
  shows "x * y = a * c + a * d + b * c + b * d"
proof -
  have "x * y = (a + b) * (c + d)" using assms by simp
  thus ?thesis using distributive_property_multiple by simp
qed