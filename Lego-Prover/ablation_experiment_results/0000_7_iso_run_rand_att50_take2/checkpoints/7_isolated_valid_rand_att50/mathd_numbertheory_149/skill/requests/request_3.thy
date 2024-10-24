lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b mod n"
  shows "∃x. x mod m = a ∧ x mod n = b"