lemma quadratic_root_property:
  fixes a b c x :: real
  assumes "a ≠ 0"
  shows "a * x^2 + b * x + c = 0 ⟷ x = (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"