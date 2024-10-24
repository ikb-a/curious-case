lemma floor_sum_properties:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (r + k) = floor r + (if k + floor r < b then 1 else 0)"
  for k :: real