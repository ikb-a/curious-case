lemma sqrt_properties:
  fixes x y :: real
  assumes "x ≥ 0" "y ≥ 0"
  shows "sqrt(x) + sqrt(y) = sqrt(x + y + 2*sqrt(x*y))"