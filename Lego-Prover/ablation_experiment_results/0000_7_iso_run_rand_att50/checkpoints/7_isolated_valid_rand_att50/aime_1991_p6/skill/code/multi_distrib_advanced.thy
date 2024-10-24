lemma multi_distrib_advanced:
  fixes x y z w u v :: "'a :: comm_ring"
  shows "(x + y) * (z + w) + (u + v) * (z + w) = (x + u) * (z + w) + (y + v) * (z + w)"
proof -
  have "((x + y) * (z + w) + (u + v) * (z + w)) = (x + y + u + v) * (z + w)" 
    by (auto simp: field_simps)
  then show ?thesis
    using multi_distrib_parametrized by (auto simp: field_simps)
qed