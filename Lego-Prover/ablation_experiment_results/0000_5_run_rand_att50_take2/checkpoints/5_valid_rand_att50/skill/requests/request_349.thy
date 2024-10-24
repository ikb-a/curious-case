lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < a + 1"
  shows "floor (r + k) = a + (if k + a < 1 then 0 else 1)"