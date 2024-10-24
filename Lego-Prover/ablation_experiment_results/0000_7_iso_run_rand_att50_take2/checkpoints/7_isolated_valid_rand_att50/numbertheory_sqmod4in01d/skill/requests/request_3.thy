lemma int_mod_properties:
  fixes a b :: int
  assumes "a ≡ b (mod n)"
  shows "a^2 ≡ b^2 (mod n)"