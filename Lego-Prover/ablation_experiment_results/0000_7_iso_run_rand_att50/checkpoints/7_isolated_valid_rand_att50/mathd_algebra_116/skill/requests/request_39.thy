lemma quadratic_root_substitution:
  fixes a b c x k :: real
  assumes "a ≠ 0" "x = (-b ± sqrt(b^2 - 4*a*c)) / (2*a)"
  shows "a*x^2 + b*x + c = 0 ⟷ (b^2 - 4*a*c = 0 ∨ b^2 - 4*a*c > 0)"