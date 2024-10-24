lemma distributive_property_generalized:
  fixes x y z :: "'a :: comm_ring"
  shows "(x + y) * z = x * z + y * z"
  by (auto simp: field_simps)