lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "gcd a m = 1"
  shows "\<exists>x. a * x mod m = b"