lemma floor_sum_property:
  fixes r :: real
  assumes "n > 0" "k > 0"
  shows "floor (r + k) = floor r + (if r + k - floor r < 1 then 0 else 1)"