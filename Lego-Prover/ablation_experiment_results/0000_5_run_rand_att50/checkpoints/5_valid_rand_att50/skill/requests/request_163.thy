lemma find_values:
  fixes N :: nat
  assumes "N < 50"
  shows "(N mod 8 = 5) = (N = 8 * k + 5) for some k" and "(N mod 6 = 3) = (N = 6 * m + 3) for some m"