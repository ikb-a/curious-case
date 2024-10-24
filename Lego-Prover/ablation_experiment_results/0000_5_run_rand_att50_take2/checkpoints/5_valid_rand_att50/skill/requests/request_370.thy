lemma prime_product:
  fixes n :: nat
  assumes "n > 0" 
    and "prime ((n - 2) * (n - 1))"
  shows "n = 3"