lemma mod_properties:
  fixes a b c :: int
  assumes "a ≡ b (mod c)"
  shows "a^2 ≡ b^2 (mod c)"