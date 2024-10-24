lemma optimization_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 + (x * y)^2 ≥ 0"
  shows "x^2 + y^2 + (x * y)^2 + 1 ≥ 1"