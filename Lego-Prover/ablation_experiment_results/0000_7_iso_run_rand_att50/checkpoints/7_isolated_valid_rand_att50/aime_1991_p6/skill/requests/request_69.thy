lemma floor_multiply:
  fixes x :: real
  assumes "x >= 0"
  shows "floor (c * x) = c * floor x + (if c * (x - floor x) < 1 then 0 else 1)"