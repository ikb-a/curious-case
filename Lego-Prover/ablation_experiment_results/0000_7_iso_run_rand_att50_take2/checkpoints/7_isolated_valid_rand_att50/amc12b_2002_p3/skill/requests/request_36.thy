lemma is_prime:
  fixes p :: nat
  assumes "p > 1"
  shows "prime p ⟷ (∀d. d ∣ p ⟶ d = 1 ∨ d = p)"
  by (simp add: prime_def)