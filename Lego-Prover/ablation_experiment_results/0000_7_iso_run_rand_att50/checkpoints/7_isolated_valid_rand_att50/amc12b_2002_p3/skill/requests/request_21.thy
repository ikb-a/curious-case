lemma consecutive_integers_product:
  fixes a b :: nat
  assumes "a = b + 1"
  shows "a * b = 2 ⟷ (a, b) = (2, 1) ∨ (a, b) = (1, 2)"