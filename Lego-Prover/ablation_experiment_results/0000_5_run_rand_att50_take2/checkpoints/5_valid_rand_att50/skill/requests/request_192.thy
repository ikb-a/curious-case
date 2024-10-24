theorem chinese_remainder:
  fixes a b c d :: nat
  assumes "a < b" "c < d" "b" and "d" are coprime
  shows "∃x. x mod b = a ∧ x mod d = c"