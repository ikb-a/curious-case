lemma sqrt_simplification:
  fixes x y :: real
  assumes "x ≥ 0" "y ≥ 0"
  shows "sqrt(x + y) = sqrt x + sqrt y ⟹ x + y = (sqrt x + sqrt y)^2"