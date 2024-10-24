lemma product_even_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "even (a * b) ⟷ (a = 1 ∧ b = 2) ∨ (a = 2 ∧ b = 1)"