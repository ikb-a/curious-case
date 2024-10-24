lemma solve_congruences:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod n = d"
  shows "(\<exists>k. x = a + m * k \<and> x mod n = d) \<longleftrightarrow> (b + m * k) mod n = d"