lemma product_prime:
  fixes a b :: nat
  assumes "a * b = 2" "a > 0" "b > 0"
  shows "a = 1 ∧ b = 2 ∨ a = 2 ∧ b = 1"