lemma linear_function_slope:
  fixes m c :: real and x1 x2 :: real
  assumes "f x = m * x + c"
  shows "f x2 - f x1 = m * (x2 - x1)"