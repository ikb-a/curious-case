lemma quadratic_formula:
  fixes a b c x :: real
  assumes "a ≠ 0"
  defines "disc ≡ b^2 - 4 * a * c"
  assumes "disc ≥ 0"
  shows "a * x^2 + b * x + c = 0 ⟷ x ∈ {(-b - sqrt disc) / (2*a), (-b + sqrt disc) / (2*a)}"