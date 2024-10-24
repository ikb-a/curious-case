lemma multi_distrib_with_params:
  fixes a b c d e f g h x y u v :: "'a :: comm_ring"
  shows "(x + y) * (c + d) + (u + v) * (g + h) = (x * c + y * c + x * d + y * d) + (u * g + v * g + u * h + v * h)"
  using distributive_property_general by blast