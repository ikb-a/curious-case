lemma bound_r:
  fixes r :: real
  assumes "a < r < b"
  shows "floor (100 * r) = floor (100 * a) + 1"