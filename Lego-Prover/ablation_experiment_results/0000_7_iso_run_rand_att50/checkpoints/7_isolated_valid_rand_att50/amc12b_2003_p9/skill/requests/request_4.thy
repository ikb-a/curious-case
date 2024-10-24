lemma linear_function_difference:
  fixes a b m c :: real
  assumes "f x = m * x + c"
  shows "f x - f y = m * (x - y)"