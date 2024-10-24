lemma polynomial_prime:
  fixes n :: nat
  assumes "n > 0"
  shows "prime (n^2 - 3*n + 2) \<longleftrightarrow> (n = 3)"