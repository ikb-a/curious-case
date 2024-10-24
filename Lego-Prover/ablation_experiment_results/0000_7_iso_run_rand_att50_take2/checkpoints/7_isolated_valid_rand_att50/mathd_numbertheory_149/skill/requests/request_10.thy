lemma chinese_remainder_theorem:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a < m" "b < n"
  shows "∃x. x mod m = a ∧ x mod n = b ⟷ ∃k. x = a + k * m ∧ (a + k * m) mod n = b"