lemma factorization_implications:
  fixes n :: nat
  assumes "n > 0"
  shows "(n-2)(n-1) = p ⟹ p is prime ⟹ (n = 3 ∨ n = 4)"