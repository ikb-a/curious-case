lemma factor_quadratic:
  fixes n :: nat
  shows "n^2 - 3*n + 2 = (n - 1) * (n - 2)"
  by (simp add: algebra_simps)