lemma sqrt_simplification:
  fixes a b :: real
  assumes "a ≥ 0" "b ≥ 0"
  shows "sqrt(a) + sqrt(b) = sqrt(a + b + 2*sqrt(a*b))"