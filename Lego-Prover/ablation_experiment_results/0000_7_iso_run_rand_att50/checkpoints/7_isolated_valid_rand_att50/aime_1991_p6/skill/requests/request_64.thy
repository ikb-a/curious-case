lemma floor_sum_bounds:
  fixes r :: real
  assumes "n > 0"
  shows "floor (r + k) + n - 1 \leq \sum_{i=0}^{n-1} floor (r + i) < floor (r + n) + n"