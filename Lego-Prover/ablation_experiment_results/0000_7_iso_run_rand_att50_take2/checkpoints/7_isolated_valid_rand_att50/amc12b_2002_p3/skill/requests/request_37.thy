lemma product_of_factors_is_prime:
  fixes a b :: nat
  assumes "prime (a * b)" "a > 0" "b > 0"
  shows "a = 1 ∧ b = p ∨ a = p ∧ b = 1"