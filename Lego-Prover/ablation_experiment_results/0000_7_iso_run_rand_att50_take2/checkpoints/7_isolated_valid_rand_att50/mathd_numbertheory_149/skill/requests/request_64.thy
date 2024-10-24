lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "gcd a m = 1"
  shows "\<exists> x. a * x mod m = b \<longleftrightarrow> b mod m = 0"