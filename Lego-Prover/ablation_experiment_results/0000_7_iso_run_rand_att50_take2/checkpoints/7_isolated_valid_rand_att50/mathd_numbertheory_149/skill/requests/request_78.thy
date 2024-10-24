lemma chinese_remainder_theorem:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "gcd m n = 1"
  shows "(\<exists> x. x mod m = a \<and> x mod n = b) \<longleftrightarrow> (\<exists> k. a + k * m mod n = b)"