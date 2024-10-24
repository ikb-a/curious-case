lemma discriminant_property:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "b^2 - 4*a*c ≥ 0 ⟷ (2*a*x^2 - 2*b*x + c = 0) has real roots"