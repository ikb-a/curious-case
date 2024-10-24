lemma prime_product:
  fixes n :: nat
  assumes "n > 0"
  shows "((n - 1) * (n - 2) = 2) ⟷ (n = 3)"