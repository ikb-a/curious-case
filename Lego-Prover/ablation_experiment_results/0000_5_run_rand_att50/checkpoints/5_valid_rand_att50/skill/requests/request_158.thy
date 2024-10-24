lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" and "a mod n = c" and "m coprime n"
  shows "∃k. a = b + k * m ∧ a mod n = c"