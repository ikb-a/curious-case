lemma chinese_remainder_theorem:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "m coprime to n"
  shows "(\<exists> x. x mod m = b \<and> x mod n = d) \<longleftrightarrow> (b mod gcd m n = d mod gcd m n)"