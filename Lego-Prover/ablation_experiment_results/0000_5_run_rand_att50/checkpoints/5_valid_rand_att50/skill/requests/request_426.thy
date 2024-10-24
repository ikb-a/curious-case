lemma product_equals_prime:
  fixes p :: nat
  assumes "prime p"
  shows "∃a b. a * b = p ∧ (a = 1 ∨ b = 1)"