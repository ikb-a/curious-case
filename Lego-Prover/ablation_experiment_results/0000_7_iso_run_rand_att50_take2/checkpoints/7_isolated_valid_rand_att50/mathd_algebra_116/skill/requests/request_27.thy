lemma calculate_quadratic_term:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 = (300 - 26 * sqrt 131) / 8"