lemma linear_congruence_solution:
  fixes a b m :: nat
  assumes "gcd d m = 1"
  shows "∃x. x mod m = a mod m"