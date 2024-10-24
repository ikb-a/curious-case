lemma sum_floor_bounds:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor a + floor b \<le> floor (r + a + b) \<le> floor a + floor b + 1"