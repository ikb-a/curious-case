lemma prime_product:
  fixes n :: nat
  assumes "prime ((n - 2) * (n - 1))"
  shows "n = 3"