lemma floor_sum_bounds:
  fixes x y :: real
  shows "floor (x + y) \leq floor x + floor y \<and> floor (x + y) \geq floor x + floor y - 1"