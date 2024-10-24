lemma prime_condition:
  fixes n :: nat
  assumes "n > 0" and "prime (n^2 - 3*n + 2)"
  shows "n = 3"