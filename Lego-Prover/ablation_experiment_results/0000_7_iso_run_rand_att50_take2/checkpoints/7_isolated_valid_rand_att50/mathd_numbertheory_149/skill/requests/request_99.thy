lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b" "c mod n = d"
  shows "x = a + k * m" for some integer k satisfying the combined congruence.