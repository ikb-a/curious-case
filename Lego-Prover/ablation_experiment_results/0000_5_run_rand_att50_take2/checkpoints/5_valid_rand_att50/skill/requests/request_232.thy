lemma congruence_properties:
  fixes a b c :: nat
  assumes "a ≡ b (mod c)"
  shows "a + d ≡ b + d (mod c) ∧ a * d ≡ b * d (mod c)"