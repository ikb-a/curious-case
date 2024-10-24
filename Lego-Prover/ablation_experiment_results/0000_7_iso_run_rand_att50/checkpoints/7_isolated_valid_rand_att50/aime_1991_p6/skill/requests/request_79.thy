lemma floor_sum_bounds:
  fixes r :: real and n :: nat
  assumes "n > 0"
  shows "floor (r + (n - 1) / 100) - floor (r + 0 / 100) \in