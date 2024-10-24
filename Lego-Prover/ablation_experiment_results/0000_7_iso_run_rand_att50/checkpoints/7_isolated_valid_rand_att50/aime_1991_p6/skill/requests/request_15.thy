lemma floor_sum_property:
  fixes r :: real
  assumes "a = floor r"
  shows "floor (r + k / 100) = a + (if a + 1 > r + k / 100 then 0 else 1)"
  for k :: nat