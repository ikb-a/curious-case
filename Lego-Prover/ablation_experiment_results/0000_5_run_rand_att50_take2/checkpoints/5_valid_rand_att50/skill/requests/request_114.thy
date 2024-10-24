lemma quadratic_formula:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "x = (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"