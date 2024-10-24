lemma floor_add:
  fixes x y :: real
  shows "floor (x + y) = floor x + floor y + (if (x + y) < (floor x + floor y) then 0 else 1)"