lemma floor_inequality:
  fixes x y :: real
  assumes "x < y"
  shows "floor x < floor y"