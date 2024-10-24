lemma substitute_quadratic:
  fixes a b c x k :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"