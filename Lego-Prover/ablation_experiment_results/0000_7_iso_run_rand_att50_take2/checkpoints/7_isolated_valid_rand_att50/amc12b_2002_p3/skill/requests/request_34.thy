lemma prime_check:
  fixes n :: nat
  assumes "n > 1"
  shows "prime n ⟷ (∀d. d dvd n ⟶ d = 1 ∨ d = n)"