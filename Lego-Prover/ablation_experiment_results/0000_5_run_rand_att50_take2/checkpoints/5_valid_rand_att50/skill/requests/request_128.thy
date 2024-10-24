lemma calculate_2x_squared:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 = (600 - 52 * sqrt 131) / 16"