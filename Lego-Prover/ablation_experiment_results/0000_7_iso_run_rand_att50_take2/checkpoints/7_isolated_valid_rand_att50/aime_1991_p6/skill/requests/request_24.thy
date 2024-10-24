lemma floor_sum_range:
  fixes r :: real and a :: real and b :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (r + (a + b) / 2) + (if (r + a) < (floor (r + a) + 1) then 0 else 1) + (if (r + b) < (floor (r + b) + 1) then 0 else 1)"