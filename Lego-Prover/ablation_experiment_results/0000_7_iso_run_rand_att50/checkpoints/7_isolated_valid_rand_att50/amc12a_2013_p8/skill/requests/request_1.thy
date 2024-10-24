lemma factor_expression:
  fixes a b :: real
  assumes "a - b = (c * (a - b)) / d"
  shows "d ≠ 0 ⟹ a - b ≠ 0 ⟹ 1 = c / d"