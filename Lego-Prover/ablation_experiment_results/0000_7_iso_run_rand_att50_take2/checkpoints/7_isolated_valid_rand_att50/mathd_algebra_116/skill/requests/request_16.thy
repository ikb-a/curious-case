lemma substitute_x_in_quadratic:
  fixes k x :: real
  assumes h0: "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 - 13 * x = (19 - 4 * k) / 4"