lemma bound_r_from_floor:
  fixes r :: real
  assumes "n = floor r"
  shows "n <= r < n + 1"