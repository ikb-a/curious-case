lemma multi_distrib_nat:
  fixes a b c d :: nat
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
  using distributive_property by (auto simp: field_simps)