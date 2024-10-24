lemma linear_difference:
  fixes a b m c :: real
  assumes "f x = m * x + c"
  shows "f(a) - f(b) = m * (a - b)"