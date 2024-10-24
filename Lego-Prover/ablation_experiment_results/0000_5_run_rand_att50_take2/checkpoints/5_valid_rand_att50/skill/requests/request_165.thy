lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a < b" "c < d"
  shows "∃x. x mod b = a ∧ x mod d = c ⟷ ∃k. x = a + b * k ∧ (a + b * k) mod d = c"