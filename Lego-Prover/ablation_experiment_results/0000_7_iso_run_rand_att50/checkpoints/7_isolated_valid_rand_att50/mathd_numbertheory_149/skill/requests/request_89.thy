lemma find_values_under_limit:
  fixes N :: nat
  assumes "N < L" and "N = a + b * k" for some k
  shows "N = a + b * m" for m in the range of k under the limit