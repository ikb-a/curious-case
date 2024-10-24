lemma floor_sum:
  fixes r :: real and k :: nat
  shows "floor (r + k / 100) = floor r + (if r + k / 100 < floor r + 1 then 0 else 1)"