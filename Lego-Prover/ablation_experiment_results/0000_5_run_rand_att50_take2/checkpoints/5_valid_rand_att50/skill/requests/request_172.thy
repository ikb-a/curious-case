lemma power_mod_equivalence:
  fixes a b :: int and k :: nat and m :: int
  assumes "a ≡ b (mod m)"
  shows "a^k ≡ b^k (mod m)"