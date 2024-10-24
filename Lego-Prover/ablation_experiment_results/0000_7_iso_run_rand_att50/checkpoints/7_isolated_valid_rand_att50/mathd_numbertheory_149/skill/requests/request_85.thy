lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "a mod m = b"
  shows "\<exists>k. x = a + m * k"