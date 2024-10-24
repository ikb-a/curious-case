lemma substitute_and_simplify:
  fixes k x :: real
  assumes "2 * x^2 - 13 * x + k = 0"
  shows "k = 13 * x - 2 * x^2"