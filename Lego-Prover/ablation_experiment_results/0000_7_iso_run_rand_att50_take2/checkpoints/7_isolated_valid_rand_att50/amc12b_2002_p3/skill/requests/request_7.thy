lemma product_of_two_integers_is_prime:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "prime (a * b)"
  shows "a = 1 ∨ b = 1"