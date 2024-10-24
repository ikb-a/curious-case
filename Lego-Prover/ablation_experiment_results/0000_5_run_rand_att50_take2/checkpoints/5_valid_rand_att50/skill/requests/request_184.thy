lemma roots_of_quadratic:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "2 * x^2 - 13 * x + k = 0 ⟹ (x1, x2) = (-b ± sqrt(b^2 - 4ac)) / (2a)"