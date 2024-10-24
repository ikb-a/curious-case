lemma real_root_conditions:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "b^2 - 4*a*c ≥ 0 ⟹ ∃ x. a*x^2 + b*x + c = 0"