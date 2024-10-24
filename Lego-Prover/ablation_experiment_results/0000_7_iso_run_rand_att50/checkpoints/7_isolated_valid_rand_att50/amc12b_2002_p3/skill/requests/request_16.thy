lemma check_prime:
  fixes p :: nat
  assumes "p = (n - 2) * (n - 1)"
  shows "prime p ⟷ (p = 2 ∧ n = 3)"