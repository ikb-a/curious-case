lemma product_prime_condition:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 ∧ b = p ∨ a = p ∧ b = 1" for some prime p