lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "a mod m = r" and "b mod n = s"
  shows "x = a + k * m" for some integer k satisfying "x mod n = s"