lemma congruence_properties:
  fixes a b c d :: nat
  assumes "a ≡ b (mod c)" and "b ≡ d (mod c)"
  shows "a ≡ d (mod c)"