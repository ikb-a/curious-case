lemma factor_quadratic:
  fixes n :: nat
  shows "n^2 - 3*n + 2 = (n - 2) * (n - 1)"
  by (simp add: algebra_simps)