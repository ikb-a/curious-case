lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "gcd a m = 1"
  shows "\<exists> x. x mod m = b \<longleftrightarrow> b < m"