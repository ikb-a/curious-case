lemma chinese_remainder:
  fixes a b :: nat
  assumes "a mod m = r" "b mod n = s" "gcd m n = 1"
  shows "∃x. x mod (m * n) = r ∧ x mod m = a ∧ x mod n = b"