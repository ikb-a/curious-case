lemma mod_arithmetic:
  fixes a b c d k :: nat
  assumes "(a - b) mod d = k"
  shows "(a^2 - 1) mod (d*2) = 2 * k"