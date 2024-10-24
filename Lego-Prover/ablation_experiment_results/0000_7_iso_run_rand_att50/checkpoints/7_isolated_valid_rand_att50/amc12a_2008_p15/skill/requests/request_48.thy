lemma congruence_properties:
  assumes "a ≡ b (mod m)" and "c ≡ d (mod m)"
  shows "(a + c) ≡ (b + d) (mod m) ∧ (a * c) ≡ (b * d) (mod m)"