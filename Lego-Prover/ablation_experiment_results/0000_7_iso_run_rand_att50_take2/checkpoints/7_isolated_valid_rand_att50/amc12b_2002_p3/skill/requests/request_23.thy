lemma factor_quadratic:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "∃x y. a*x^2 + b*x + c = 0 ⟷ (x - y)(x - z) = 0"