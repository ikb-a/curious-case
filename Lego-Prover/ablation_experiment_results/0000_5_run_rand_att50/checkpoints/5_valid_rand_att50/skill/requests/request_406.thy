lemma floor_function_bounds:
  fixes r :: real
  assumes "n < r < n + 1"
  shows "floor r = n"