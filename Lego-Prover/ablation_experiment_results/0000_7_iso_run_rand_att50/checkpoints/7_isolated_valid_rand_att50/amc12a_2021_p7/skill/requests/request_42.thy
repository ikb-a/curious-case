lemma exp_simplification:
  fixes m k :: nat
  assumes "3^m - 1 = 8 * m * k + 4 * m"
  shows "3^(2*m) - 1 = 16 * m * (4 * m * k^2 + m + 4 * m * k + k) + 8 * m"