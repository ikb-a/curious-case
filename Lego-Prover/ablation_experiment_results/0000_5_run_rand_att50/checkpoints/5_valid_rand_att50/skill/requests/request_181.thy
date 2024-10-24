lemma prime_product:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 ∧ b = 1 ∨ a = 2 ∧ b = 1 ∨ a = 1 ∧ b = 2"