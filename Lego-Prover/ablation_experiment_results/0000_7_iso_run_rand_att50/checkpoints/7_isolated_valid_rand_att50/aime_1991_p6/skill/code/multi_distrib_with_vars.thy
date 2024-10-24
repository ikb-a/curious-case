lemma multi_distrib_with_vars:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  show ?thesis by (simp add: distrib_left distrib_right)
qed