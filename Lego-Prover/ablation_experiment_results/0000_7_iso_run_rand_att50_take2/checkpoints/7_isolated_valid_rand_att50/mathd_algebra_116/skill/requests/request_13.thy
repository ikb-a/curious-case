lemma sqrt_simplification:
  fixes a b :: real
  assumes "a ≥ 0" "b ≥ 0"
  shows "sqrt(a + b) = sqrt a + sqrt b ⟹ a + b = (sqrt a + sqrt b)^2"