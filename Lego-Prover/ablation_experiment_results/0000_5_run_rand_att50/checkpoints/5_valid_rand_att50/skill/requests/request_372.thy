lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a < b" "c < d" "gcd b d = 1"
  shows "∃x. x mod b = a ∧ x mod d = c"