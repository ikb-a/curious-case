lemma floor_sum:
  fixes r :: real
  assumes "n > 0"
  shows "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"