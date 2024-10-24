lemma solve_linear_equation:
  fixes a b :: real
  assumes "a ≠ 0"
  shows "a * x = b ⟹ x = b / a"