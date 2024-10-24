lemma floor_add:
  fixes x y :: real
  shows "floor (x + y) = floor x + floor y + (if (x - floor x + y - floor y) < 1 then 0 else 1)"