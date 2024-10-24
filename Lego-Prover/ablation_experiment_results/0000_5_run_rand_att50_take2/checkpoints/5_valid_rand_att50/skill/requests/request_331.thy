lemma chinese_remainder:
  fixes a b :: nat
  assumes "a mod m = r" and "b mod n = s" and "gcd m n = 1"
  shows "∃x. x mod m = a ∧ x mod n = b"