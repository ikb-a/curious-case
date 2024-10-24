lemma cross_multiply:
  fixes a b c d :: real
  assumes "b ≠ 0" "d ≠ 0"
  shows "(a/b = c/d) ⟷ (a * d = b * c)"