lemma optimization_minimum:
  fixes x y :: real
  assumes "x = 0" "y = 0"
  shows "1 = ((x * y) - 1)^2 + (x + y)^2"