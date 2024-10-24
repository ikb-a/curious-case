lemma discriminant_zero:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "b^2 - 4*a*c = 0 ⟹ (b / (2*a)) = ± sqrt(c / a)"