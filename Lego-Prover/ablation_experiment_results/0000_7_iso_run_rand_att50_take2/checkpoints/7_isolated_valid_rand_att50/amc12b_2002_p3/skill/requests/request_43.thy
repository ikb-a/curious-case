lemma prime_factorization:
  fixes n :: nat
  assumes "n > 0"
  shows "n^2 - 3*n + 2 = (n-2)*(n-1)"