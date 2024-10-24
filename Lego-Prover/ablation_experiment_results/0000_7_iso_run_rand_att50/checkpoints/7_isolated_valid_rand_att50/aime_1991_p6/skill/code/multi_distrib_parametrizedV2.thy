lemma multi_distrib_parametrized:
  fixes x y z w :: "'a :: comm_ring"
  shows "(x + y) * (z + w) = x * z + y * z + x * w + y * w"
proof -
  have "(x + y) * (z + w) = (x + y) * z + (x + y) * w" by (simp add: distrib_left)
  then show ?thesis by (auto simp: field_simps)
qed