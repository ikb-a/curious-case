lemma solve_linear_congruence:
  fixes a b m :: nat
  assumes "a > 0" "m > 0"
  shows "x mod m = b" has solutions if and only if \( b < m \)