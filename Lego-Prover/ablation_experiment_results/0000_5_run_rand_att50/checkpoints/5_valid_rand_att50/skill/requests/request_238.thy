lemma count_terms_in_sum:
  fixes n x :: nat
  assumes "x + (73 - x) = 73"
  shows "n * (73 - x) + (n + 1) * x = 546"