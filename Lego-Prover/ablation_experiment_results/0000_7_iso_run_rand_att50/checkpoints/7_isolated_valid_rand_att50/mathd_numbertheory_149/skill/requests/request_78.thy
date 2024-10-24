lemma divisibility_properties:
  fixes a b :: nat
  assumes "a mod d = 0" and "b mod d = 0"
  shows "(a + b) mod d = 0"