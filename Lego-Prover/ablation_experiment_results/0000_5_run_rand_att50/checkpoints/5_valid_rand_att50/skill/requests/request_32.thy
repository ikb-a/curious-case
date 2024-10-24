lemma linear_function_difference:
  fixes m c :: real and x y :: real
  assumes "f x = m * x + c" and "f y = m * y + c"
  shows "f y - f x = m * (y - x)"