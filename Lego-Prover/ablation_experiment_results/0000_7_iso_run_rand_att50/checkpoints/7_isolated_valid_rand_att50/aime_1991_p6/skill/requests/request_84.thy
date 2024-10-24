lemma floor_bounds:
  fixes r :: real
  assumes "floor (r) = n"
  shows "n \leq r < n + 1"