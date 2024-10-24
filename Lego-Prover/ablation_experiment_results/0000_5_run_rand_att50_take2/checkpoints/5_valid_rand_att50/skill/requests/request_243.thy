lemma sum_floor_bounds:
  fixes r :: real
  assumes "a ≤ r < b"
  shows "floor (r + k) = floor r + (if k + floor r < b then 0 else 1)"