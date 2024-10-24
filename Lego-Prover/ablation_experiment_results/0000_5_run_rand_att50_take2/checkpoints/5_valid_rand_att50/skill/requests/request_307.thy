lemma product_of_factors:
  fixes a b :: nat
  assumes "a * b = p" and "prime p"
  shows "a = 1 ∧ b = p ∨ a = p ∧ b = 1"