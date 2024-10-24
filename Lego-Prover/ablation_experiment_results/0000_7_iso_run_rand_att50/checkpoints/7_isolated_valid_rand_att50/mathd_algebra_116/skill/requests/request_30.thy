lemma solve_sqrt_equation:
  fixes a b :: real
  assumes "a ≥ 0" "b ≥ 0"
  shows "sqrt a = b ⟷ a = b^2"