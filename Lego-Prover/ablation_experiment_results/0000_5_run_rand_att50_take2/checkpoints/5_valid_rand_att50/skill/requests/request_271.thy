lemma count_terms:
  fixes n :: nat
  assumes "x + y = n"
  shows "x * a + y * (a + 1) = total"