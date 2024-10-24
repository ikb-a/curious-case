lemma multi_distrib_complex_ext:
  fixes a b :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "((a + b) * (c + d)) = (a * c + b * c + a * d + b * d)" by (simp add: distrib_left distrib_right)
  thus ?thesis by simp
qed