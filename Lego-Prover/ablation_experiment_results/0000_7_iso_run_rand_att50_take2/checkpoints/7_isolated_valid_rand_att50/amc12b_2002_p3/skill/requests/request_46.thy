lemma check_prime:
  fixes n :: nat
  assumes "n = 3"
  shows "prime (n^2 - 3*n + 2)"