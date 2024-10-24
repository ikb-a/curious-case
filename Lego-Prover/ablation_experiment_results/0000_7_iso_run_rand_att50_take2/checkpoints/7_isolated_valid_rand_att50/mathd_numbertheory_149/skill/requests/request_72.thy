lemma chinese_remainder:
  fixes a b m n :: nat
  assumes "m > 0" "n > 0" "a mod m = b mod n"
  shows "(\<exists> x. x mod m = a \<and> x mod n = b) \<longleftrightarrow> (a mod (lcm m n) = b mod (lcm m n))"