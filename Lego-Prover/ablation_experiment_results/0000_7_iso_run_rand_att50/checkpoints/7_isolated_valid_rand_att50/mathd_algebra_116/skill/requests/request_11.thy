lemma quadratic_root:
  fixes k x :: real
  assumes "x = (13 - sqrt 131) / 4" 
    and "2 * x^2 - 13 * x + k = 0"
  shows "k = 19 / 4"