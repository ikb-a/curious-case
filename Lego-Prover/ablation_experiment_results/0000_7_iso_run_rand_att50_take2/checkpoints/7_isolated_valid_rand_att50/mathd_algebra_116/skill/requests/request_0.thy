lemma substitute_quadratic:
  fixes k x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 - 13 * x + k = 0 \<longleftrightarrow> k = 19 / 4"