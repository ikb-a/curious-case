lemma mod_equivalence:
  fixes a b m :: int
  assumes "a ≡ b (mod m)"
  shows "a mod m = b mod m"