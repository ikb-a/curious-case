lemma sum_floor_inequality:
  fixes r :: real
  assumes "k1 < k2"
  shows "floor (r + k1) + floor (r + k2) \leq floor (r + k1 + k2)"