lemma multi_distrib:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  show "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
    by (simp add: distrib_left distrib_right)
qed