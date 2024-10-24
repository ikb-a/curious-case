lemma mod_equivalence:
  fixes a b m :: nat
  assumes "m > 0"
  shows "a ≡ b (mod m) ⟷ ∃k. a = b + k * m"