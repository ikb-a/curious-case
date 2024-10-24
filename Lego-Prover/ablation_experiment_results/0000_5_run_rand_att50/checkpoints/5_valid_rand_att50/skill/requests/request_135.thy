lemma sqrt_simplification:
  fixes x y :: real
  assumes "x ≥ 0" "y ≥ 0"
  shows "sqrt(x) * sqrt(y) = sqrt(x * y)"