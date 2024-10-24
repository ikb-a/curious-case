lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d"
  shows "(\<exists>k. x = a + m * k) \<and> (\<exists>j. x = c + n * j) \<longrightarrow> x mod (lcm m n) = (b + d) mod (lcm m n)"