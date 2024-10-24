lemma product_prime:
  fixes a b :: nat
  assumes "prime (a * b)"
  shows "a = 1 ∨ b = 1"