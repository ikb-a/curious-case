lemma continuous_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "continuous (sqrt) (at x)"