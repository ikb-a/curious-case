lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(\<exists> x. x mod m = a) \<longleftrightarrow> (\<exists> k. x = a + k * m)"