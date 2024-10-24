lemma mod_properties:
  fixes a b c d :: nat
  assumes "a mod d = b" "c mod d = 0"
  shows "(a + c) mod d = b"