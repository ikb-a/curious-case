lemma inequality_bounds:
  fixes r :: real
  assumes "floor (r + 57 / 100) = 8"
  shows "8 - 57 / 100 <= r < 9 - 57 / 100"