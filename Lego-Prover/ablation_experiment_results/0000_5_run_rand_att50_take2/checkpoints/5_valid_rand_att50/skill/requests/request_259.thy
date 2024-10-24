lemma quadratic_roots:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "roots of (a * x^2 + b * x + c) = (-b ± sqrt(b^2 - 4 * a * c)) / (2 * a)"