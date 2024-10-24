lemma chinese_remainder:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d" "m coprime n"
  shows "(\<exists>x. x mod m = a \<and> x mod n = c) \<longleftrightarrow> (\<exists>k. x = a + k * m)"