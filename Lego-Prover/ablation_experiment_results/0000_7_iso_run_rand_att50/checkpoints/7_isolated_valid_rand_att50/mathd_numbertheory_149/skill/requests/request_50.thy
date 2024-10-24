lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "gcd a m = 1"
  shows "∃x. x ≡ b (mod m) ⟷ ∀k. x = b + k * m"