lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b" "a mod n = c"
  shows "∃k. a = b + m * k ∧ a mod n = c"