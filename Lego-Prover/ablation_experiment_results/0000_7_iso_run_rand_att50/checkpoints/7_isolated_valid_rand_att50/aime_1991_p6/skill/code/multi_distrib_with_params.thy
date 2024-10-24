lemma multi_distrib_with_params:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "(a + b) * (c + d) + (e + f) * (g + h) = (a * c + b * c + a * d + b * d) + (e * g + f * g + e * h + f * h)"
  using multi_distrib_general by blast