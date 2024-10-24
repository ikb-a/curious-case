lemma sqrt_diff:
  fixes x y :: real
  assumes "x ≥ 0" "y ≥ 0"
  shows "sqrt(x) - sqrt(y) = (x - y) / (sqrt(x) + sqrt(y))"