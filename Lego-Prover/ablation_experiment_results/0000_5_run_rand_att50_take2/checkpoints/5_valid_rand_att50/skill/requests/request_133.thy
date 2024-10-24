lemma floor_bounds:
  assumes "m = floor (r + k / 100)"
  shows "m \<le> r + k / 100 < m + 1"