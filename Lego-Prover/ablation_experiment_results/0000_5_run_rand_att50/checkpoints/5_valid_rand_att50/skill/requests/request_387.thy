lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a < b" "c < d" "b > 0" "d > 0"
  shows "∃x. x mod b = a ∧ x mod d = c ⟷ ∃k. x = a + b * k ∧ (a + b * k) mod d = c"