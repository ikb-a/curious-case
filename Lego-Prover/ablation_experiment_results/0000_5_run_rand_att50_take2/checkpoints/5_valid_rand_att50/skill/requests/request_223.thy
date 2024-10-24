lemma prime_factors:
  fixes n :: nat
  assumes "n > 0" "prime (n^2 - 3*n + 2)"
  shows "n = 3"