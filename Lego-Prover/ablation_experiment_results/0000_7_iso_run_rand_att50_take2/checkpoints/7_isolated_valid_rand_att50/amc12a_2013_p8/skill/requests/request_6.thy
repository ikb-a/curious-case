lemma common_denominator:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2x - 2y) / (xy)"