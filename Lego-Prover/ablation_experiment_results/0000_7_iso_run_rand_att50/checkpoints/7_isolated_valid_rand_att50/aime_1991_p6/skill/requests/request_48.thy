lemma floor_add:
  fixes r :: real and k :: real
  shows "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"