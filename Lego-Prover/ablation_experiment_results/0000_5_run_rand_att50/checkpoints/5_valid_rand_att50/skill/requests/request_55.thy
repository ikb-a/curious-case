lemma linear_slope:
  fixes m :: real
  assumes "f x = m * x + c"
  shows "f x - f y = m * (x - y)"