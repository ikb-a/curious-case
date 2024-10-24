lemma roots_of_quadratic:
  fixes a b c x :: real
  assumes "a ≠ 0" "x = (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"
  shows "a*x^2 + b*x + c = 0"