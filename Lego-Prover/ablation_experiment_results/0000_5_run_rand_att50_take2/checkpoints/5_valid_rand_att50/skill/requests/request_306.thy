lemma floor_sum_properties:
  fixes r :: real and n :: nat
  assumes "n = floor r"
  shows "floor (r + k / 100) = n + (if r + k / 100 < n + 1 then 0 else 1)"
  for k :: nat