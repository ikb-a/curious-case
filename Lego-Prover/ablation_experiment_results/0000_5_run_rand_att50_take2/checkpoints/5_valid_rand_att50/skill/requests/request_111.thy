lemma mod_power:
  fixes a b k m :: int
  assumes "a ≡ b (mod m)"
  shows "a^k ≡ b^k (mod m)"