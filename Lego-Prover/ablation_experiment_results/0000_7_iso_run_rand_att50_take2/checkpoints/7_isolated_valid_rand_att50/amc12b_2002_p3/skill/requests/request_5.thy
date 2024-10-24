lemma prime_product:
  fixes a b :: nat
  assumes "prime (a * b)" 
  shows "a = 1 ∨ b = 1"