lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "gcd m n = 1"
  shows "∃x. x mod m = a ∧ x mod n = b ⟷ ∀k. ∃r. r mod (m * n) = a + k * m"