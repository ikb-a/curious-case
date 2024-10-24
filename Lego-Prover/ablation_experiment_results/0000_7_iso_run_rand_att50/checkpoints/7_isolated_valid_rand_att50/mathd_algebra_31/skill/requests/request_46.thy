lemma sqrt_fixed_point:
  fixes x :: real
  assumes "sqrt (x + y) = y"
  shows "x = y^2 - y"