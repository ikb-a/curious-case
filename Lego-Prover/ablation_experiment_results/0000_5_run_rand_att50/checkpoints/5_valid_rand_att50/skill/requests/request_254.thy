lemma floor_multiplication:
  fixes r :: real
  shows "floor (c * r) = c * floor r + (if r < 0 then 0 else floor (c - 1))"
  for c :: real