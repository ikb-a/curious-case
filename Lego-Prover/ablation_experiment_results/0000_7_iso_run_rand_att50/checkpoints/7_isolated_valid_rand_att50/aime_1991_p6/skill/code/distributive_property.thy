lemma distributive_property:
  fixes x y z :: "'a :: comm_ring"
  shows "(x + y) * z = x * z + y * z"
proof -
  have "(x + y) * z = x * z + y * z" by (auto simp: field_simps)
  thus ?thesis by simp
qed