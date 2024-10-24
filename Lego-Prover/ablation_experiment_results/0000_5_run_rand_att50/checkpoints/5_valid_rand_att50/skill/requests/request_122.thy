lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "gcd m n = 1"
  shows "(\<exists> x. x mod m = a \<and> x mod n = b) \<longleftrightarrow> (\<exists> k. x = a + k * m)"