lemma floor_rational:
  fixes r :: real
  shows "floor (r + k / 100) = floor r + (if r + k / 100 < floor r + 1 then 0 else 1)"
  for k :: nat