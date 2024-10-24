lemma product_of_integers:
  fixes a b :: nat
  assumes "a * b = c" and "c > 0"
  shows "∃x y. (x = a ∧ y = b) ∨ (x = b ∧ y = a)"