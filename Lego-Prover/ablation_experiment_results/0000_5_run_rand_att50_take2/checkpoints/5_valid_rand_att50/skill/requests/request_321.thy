lemma find_k:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "k = (169 - 8 * (2 * x^2 - 13 * x)) / 8"