lemma distribution_property:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + b * c + a * d + b * d"
proof -
  have "((a + b) * (c + d)) = (a * c + b * c + a * d + b * d)" by (simp add: distrib_left distrib_right)
  thus ?thesis by simp
qed