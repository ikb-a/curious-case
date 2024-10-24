lemma multi_distrib_generalized:
  fixes x1 x2 y1 y2 :: "'a :: comm_ring"
  shows "(x1 + x2) * (y1 + y2) = x1 * y1 + x1 * y2 + x2 * y1 + x2 * y2"
by (auto simp: field_simps)