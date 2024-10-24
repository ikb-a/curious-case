lemma Vieta's_formulas:
  fixes a b c :: real
  assumes "a ≠ 0"
  shows "roots of a*x^2 + b*x + c = 0 ⟹ sum of roots = -b/a ∧ product of roots = c/a"