lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" and "c mod n = d" and "m coprime to n"
  shows "(\<exists> x. x mod m = b \<and> x mod n = d) \<longleftrightarrow> (b mod gcd m n = d mod gcd m n)"