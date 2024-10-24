lemma quadratic_factorization:
  fixes n :: nat
  assumes "n^2 - 3*n + 2 = (n-2)*(n-1)"
  shows "n = 2 ∨ n = 1 ∨ n = 3"