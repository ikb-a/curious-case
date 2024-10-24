lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b) + (if r + a < floor (r + a) + 1 then 0 else 1)"