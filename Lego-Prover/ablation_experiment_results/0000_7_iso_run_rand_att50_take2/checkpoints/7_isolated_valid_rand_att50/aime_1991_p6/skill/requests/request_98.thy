lemma floor_rational:
  fixes r :: real
  shows "floor (100 * r) = floor (100 * (floor r + (r - floor r)))"