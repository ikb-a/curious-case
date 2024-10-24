lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "m > 0"
  shows "\<exists>k. a + k * m = b \<Longrightarrow> a mod m = b mod m"