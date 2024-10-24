lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + y) = floor x + floor y + (if x + y < floor x + floor y + 1 then 0 else 1)"