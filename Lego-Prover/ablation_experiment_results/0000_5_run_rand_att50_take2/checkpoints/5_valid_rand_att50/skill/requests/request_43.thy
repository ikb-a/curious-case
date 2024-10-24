lemma cross_multiplication:
  fixes x y :: real
  assumes "x ≠ 0" "y ≠ 0"
  shows "(x - y) * (2/y - 2/x) = 0 ⟷ (x - y) * xy = 2 * (x - y)"