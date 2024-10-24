lemma congruence_mod:
  fixes a b m :: nat
  assumes "a mod m = b mod m"
  shows "a ≡ b mod m"