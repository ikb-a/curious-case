lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
    and "x ≡ a mod b" "x ≡ c mod d"
  shows "∃k. x = a + b * k ∧ x ≡ c mod d"