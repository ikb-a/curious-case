lemma even_prime:
  shows "prime p ⟷ (p = 2 ∨ (p > 2 ∧ odd p))"
  by (simp add: prime_def)