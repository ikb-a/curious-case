lemma sqrt_properties:
  fixes a b :: real
  assumes "a ≥ 0" "b ≥ 0"
  shows "sqrt (a * b) = sqrt a * sqrt b"