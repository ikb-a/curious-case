lemma cross_multiply:
  fixes x y :: real
  assumes "x - y = (2/y - 2/x)"
  shows "(x - y) * xy = 2 * (x - y)"