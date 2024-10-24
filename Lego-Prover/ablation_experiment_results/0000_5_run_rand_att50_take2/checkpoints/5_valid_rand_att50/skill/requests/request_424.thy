lemma product_is_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "a * b = p" "prime p"
  shows "a = 1 ∧ b = p ∨ a = p ∧ b = 1"
  by (metis assms(3) prime_def)