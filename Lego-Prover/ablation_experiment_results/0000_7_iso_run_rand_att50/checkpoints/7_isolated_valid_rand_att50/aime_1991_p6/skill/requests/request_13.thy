lemma count_terms:
  fixes a :: nat
  assumes "x + (73 - x) * (a + 1) = 546"
  shows "x = 73 * a - 473"