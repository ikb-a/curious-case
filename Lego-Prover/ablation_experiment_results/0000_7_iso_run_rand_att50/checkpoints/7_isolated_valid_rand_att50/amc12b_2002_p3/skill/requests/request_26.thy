lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)" "a > 0" "b > 0"
  shows "a = 1 ∨ b = 1"