lemma chinese_remainder:
  fixes a b c d n m :: nat
  assumes "n > 0" "m > 0" "a < n" "b < m"
  shows "∃x. x mod n = a ∧ x mod m = b ⟷ ∃k. x = a + k * n ∧ (a + k * n) mod m = b"