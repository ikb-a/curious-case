lemma count_terms:
  fixes n x :: nat
  assumes "n + x = 73"
  shows "7 * (73 - x) + 8 * x = 546"