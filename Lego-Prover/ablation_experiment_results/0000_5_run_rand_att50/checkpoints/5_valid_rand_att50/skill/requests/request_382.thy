lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "m > 0" "a mod m = b"
  shows "(\<exists> k. a = b + k * m)"