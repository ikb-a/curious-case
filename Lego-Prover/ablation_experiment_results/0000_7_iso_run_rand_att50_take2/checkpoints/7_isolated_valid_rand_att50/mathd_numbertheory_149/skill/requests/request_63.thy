lemma chinese_remainder:
  fixes a b c d m n :: nat
  assumes "m > 0" and "n > 0" and "a mod m = b" and "c mod n = d"
  shows "(\<exists> x. x mod m = b \<and> x mod n = d) \<longleftrightarrow> (b - d) mod (gcd m n) = 0"