lemma mod_simplification:
  fixes a b m :: nat
  assumes "a ≡ b mod m"
  shows "a + k ≡ b + k mod m"