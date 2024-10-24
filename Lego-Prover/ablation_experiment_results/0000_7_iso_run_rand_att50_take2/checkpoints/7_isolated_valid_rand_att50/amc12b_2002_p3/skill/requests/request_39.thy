lemma prime_product:
  assumes "prime p" "p = a * b"
  shows "a = 1 ∨ a = p ∨ b = 1 ∨ b = p"