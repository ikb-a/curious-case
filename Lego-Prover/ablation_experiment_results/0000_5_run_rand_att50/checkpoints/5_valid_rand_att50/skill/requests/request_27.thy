lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + k) = floor x + floor k + (if x + k < floor x + floor k + 1 then 0 else 1)"