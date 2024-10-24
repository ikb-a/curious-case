lemma quadratic_simplification:
  fixes a b c x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "x = (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"