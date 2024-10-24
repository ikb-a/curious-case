lemma integer_divisibility:
  fixes n :: nat
  assumes "n mod d = 0"
  shows "n = k * d" for some k :: nat