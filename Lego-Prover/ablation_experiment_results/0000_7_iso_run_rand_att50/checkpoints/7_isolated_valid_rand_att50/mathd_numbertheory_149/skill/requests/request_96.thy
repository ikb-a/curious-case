lemma linear_congruence:
  fixes a b m :: nat
  assumes "m > 0"
  shows "∃x. x mod m = a ⟷ (a + k * m) for some k ∈ ℤ"