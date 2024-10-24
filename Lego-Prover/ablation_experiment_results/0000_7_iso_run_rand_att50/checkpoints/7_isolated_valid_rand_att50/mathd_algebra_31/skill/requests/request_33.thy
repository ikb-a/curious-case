lemma sqrt_equation:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x = y ⟷ x = y^2"