lemma sqrt_limit:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = (x::real) ^ (1/2)"