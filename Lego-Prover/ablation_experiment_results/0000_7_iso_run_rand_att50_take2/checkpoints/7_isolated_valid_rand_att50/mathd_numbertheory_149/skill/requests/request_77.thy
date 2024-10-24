lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "gcd m n = 1"
  shows "∃k. x = a + m * k ∧ x mod n = d"