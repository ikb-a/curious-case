lemma sqrt_add:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt (x + y) = sqrt x + sqrt y"