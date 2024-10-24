lemma sqrt_properties:
  fixes a b :: real
  assumes "a ≥ 0" and "b ≥ 0"
  shows "sqrt a = b ⟷ a = b^2"