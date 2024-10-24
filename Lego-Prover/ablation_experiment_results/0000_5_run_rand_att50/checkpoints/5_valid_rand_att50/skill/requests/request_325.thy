lemma count_terms:
  fixes n x :: nat
  assumes "x + (73 - x) * n + x * (n + 1) = 546"
  shows "x = 546 - 73 * n"