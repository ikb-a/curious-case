lemma substitute_root:
  fixes x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 - 13 * x = (150 - 13 * sqrt 131) / 4"