lemma factor_and_prime:
  fixes n :: nat
  assumes "n > 0"
  shows "prime ((n-2)*(n-1)) ⟷ (n = 3)"