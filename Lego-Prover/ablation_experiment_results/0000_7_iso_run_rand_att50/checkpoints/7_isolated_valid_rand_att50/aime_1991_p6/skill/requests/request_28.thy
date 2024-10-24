lemma floor_sum_property:
  fixes r :: real
  assumes "a \<le> r < a + 1"
  shows "floor (r + b) = a + floor b"