lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b" "x > 0"
  shows "floor (x + a) + floor (x + b) = floor (x + a) + floor (x + b)"