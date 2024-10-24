lemma distributive_property:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (auto simp: field_simps)
  then show ?thesis by (simp add: distrib_left)
qed