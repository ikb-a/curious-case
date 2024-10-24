lemma quadratic_substitution:
  fixes k x :: real
  assumes "x = (13 - sqrt 131) / 4"
  shows "2 * x^2 - 13 * x + k = 0 ⟷ k = 19/4"