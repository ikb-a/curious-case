lemma factor_quadratic:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "a * x^2 + b * x + c = (x - r1) * (x - r2)"
  where "r1 = (-b + sqrt(b^2 - 4*a*c)) / (2*a)" and "r2 = (-b - sqrt(b^2 - 4*a*c)) / (2*a)"