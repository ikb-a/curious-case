lemma mod_properties:
  fixes a b c d :: nat
  assumes "a ≡ b (mod d)"
  shows "a + c ≡ b + c (mod d)"