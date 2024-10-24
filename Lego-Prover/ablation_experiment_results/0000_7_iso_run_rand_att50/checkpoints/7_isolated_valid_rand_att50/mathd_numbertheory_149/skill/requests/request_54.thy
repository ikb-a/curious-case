lemma linear_congruence:
  fixes a b m :: nat
  assumes "gcd m d = 1"
  shows "∃x. x mod m = a"