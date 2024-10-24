lemma roots_of_quadratic:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "(-b ± sqrt(b^2 - 4 * a * c)) / (2 * a) = r1 ∧ (-b - sqrt(b^2 - 4 * a * c)) / (2 * a) = r2 ⟹ a * r1^2 + b * r1 + c = 0 ∧ a * r2^2 + b * r2 + c = 0"