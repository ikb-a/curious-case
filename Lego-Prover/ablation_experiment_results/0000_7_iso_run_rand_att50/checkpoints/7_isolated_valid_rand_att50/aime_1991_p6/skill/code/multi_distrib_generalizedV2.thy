lemma multi_distrib_generalized:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = (a + b) * c + (a + b) * d" by (simp add: distrib_left)
  then show ?thesis by (auto simp: field_simps)
qed