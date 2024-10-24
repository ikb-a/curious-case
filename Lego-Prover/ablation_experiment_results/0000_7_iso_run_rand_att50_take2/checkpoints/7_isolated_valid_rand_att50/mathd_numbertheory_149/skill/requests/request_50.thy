lemma mod_properties:
  fixes a b m :: nat
  assumes "a ≡ b (mod m)"
  shows "a + k ≡ b + k (mod m) ∧ a * c ≡ b * c (mod m)"