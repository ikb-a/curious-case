lemma slope_relation:
  fixes m :: real and x1 x2 :: real
  assumes "x1 < x2"
  shows "m = (f x2 - f x1) / (x2 - x1)"