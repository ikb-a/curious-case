lemma floor_sum_bounds:
  fixes r :: real
  assumes "n = floor r"
  shows "floor (r + k) = n" if "k < 1" and "k + n < r + 1"